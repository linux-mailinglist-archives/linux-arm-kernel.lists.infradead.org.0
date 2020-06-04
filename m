Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3DC1EE227
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 12:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1weldBsSeucSMr8Ik8Zd7If9kdlWiigpbczh/Cph484=; b=LNzWTr5sGW8lfTPB0vC3yBNT+
	vKJ7Va1wFKKgjcvlb2H1VFPNo9gB4M/bQvtcXtZhidC9c5uSFVMlGKEnRskbvT3VYfflfNYVZ85Wd
	VT3RBY9QwOQIbJBM0mCXci5y/wDZQVL9WqBKxcjqOp8KHVwXt81oZeKoIXJKQUCsj2YfeeUl3GZdw
	KGmkd9Nb8wvqlfYcn9l67txHVEEhV1GCEokp1HOjeQ4Ol2mvphUvpnKPcq0xAMCugUdzvki7CoHbb
	OApJUjDSfEOg1fw8y/myKw5PnE3pEozdGXY6E9Q0IC6FYjLfUTf02jK0xTy4njBMKynUlx7aBmqCs
	9r03/h1Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmqe-000190-82; Thu, 04 Jun 2020 10:11:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmqX-00018N-G7
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 10:11:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B352206DC;
 Thu,  4 Jun 2020 10:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591265496;
 bh=P44bAU+xwGFOgLsCT7QfTlM8tbyumARHwDqBHLn5mDE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SrQtJzCf1AJtitsKraIknR/lnhU0YiRvyRmRccq4pZYIyrxLx+HqWi5HrYNsNZPnH
 DOm4RMEJG2Y7SjqNIxy8lWcmbkoRQHZFv9H0wmXyRn8feHqHFURucKZfNw2sBt+qYI
 1+mNyTbBPSVZvHyBH7GB9aUTz+T+ftxLSzcW8W7c=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgmqV-000Dcl-4B; Thu, 04 Jun 2020 11:11:35 +0100
MIME-Version: 1.0
Date: Thu, 04 Jun 2020 11:11:34 +0100
From: Marc Zyngier <maz@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v3 2/6] PCI: uniphier: Add misc interrupt handler to
 invoke PME and AER
In-Reply-To: <2e07d3d3-515b-57e1-0a36-8892bc38bb7b@socionext.com>
References: <1591174481-13975-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591174481-13975-3-git-send-email-hayashi.kunihiko@socionext.com>
 <78af3b11de9c513f9be2a1f42f273f27@kernel.org>
 <2e07d3d3-515b-57e1-0a36-8892bc38bb7b@socionext.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <9cbfdacba32c5e351fd9e14444768666@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: hayashi.kunihiko@socionext.com, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
 robh+dt@kernel.org, yamada.masahiro@socionext.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, masami.hiramatsu@linaro.org,
 jaswinder.singh@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_031137_575248_21D78CA7 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wNCAxMDo0MywgS3VuaWhpa28gSGF5YXNoaSB3cm90ZToKClsuLi5dCgo+Pj4g
LXN0YXRpYyB2b2lkIHVuaXBoaWVyX3BjaWVfaXJxX2hhbmRsZXIoc3RydWN0IGlycV9kZXNjICpk
ZXNjKQo+Pj4gK3N0YXRpYyB2b2lkIHVuaXBoaWVyX3BjaWVfbWlzY19pc3Ioc3RydWN0IHBjaWVf
cG9ydCAqcHApCj4+PiDCoHsKPj4+IC3CoMKgwqAgc3RydWN0IHBjaWVfcG9ydCAqcHAgPSBpcnFf
ZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+Pj4gwqDCoMKgwqAgc3RydWN0IGR3X3BjaWUg
KnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9wcChwcCk7Cj4+PiDCoMKgwqDCoCBzdHJ1Y3QgdW5pcGhp
ZXJfcGNpZV9wcml2ICpwcml2ID0gdG9fdW5pcGhpZXJfcGNpZShwY2kpOwo+Pj4gLcKgwqDCoCBz
dHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hpcChkZXNjKTsKPj4+IC3CoMKg
wqAgdW5zaWduZWQgbG9uZyByZWc7Cj4+PiAtwqDCoMKgIHUzMiB2YWwsIGJpdCwgdmlycTsKPj4+
ICvCoMKgwqAgdTMyIHZhbCwgdmlycTsKPj4+IAo+Pj4gLcKgwqDCoCAvKiBJTlQgZm9yIGRlYnVn
ICovCj4+PiDCoMKgwqDCoCB2YWwgPSByZWFkbChwcml2LT5iYXNlICsgUENMX1JDVl9JTlQpOwo+
Pj4gCj4+PiDCoMKgwqDCoCBpZiAodmFsICYgUENMX0NGR19CV19NR1RfU1RBVFVTKQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoCBkZXZfZGJnKHBjaS0+ZGV2LCAiTGluayBCYW5kd2lkdGggTWFuYWdlbWVu
dCBFdmVudFxuIik7Cj4+PiArCj4+PiDCoMKgwqDCoCBpZiAodmFsICYgUENMX0NGR19MSU5LX0FV
VE9fQldfU1RBVFVTKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBkZXZfZGJnKHBjaS0+ZGV2LCAiTGlu
ayBBdXRvbm9tb3VzIEJhbmR3aWR0aCBFdmVudFxuIik7Cj4+PiAtwqDCoMKgIGlmICh2YWwgJiBQ
Q0xfQ0ZHX0FFUl9SQ19FUlJfTVNJX1NUQVRVUykKPj4+IC3CoMKgwqDCoMKgwqDCoCBkZXZfZGJn
KHBjaS0+ZGV2LCAiUm9vdCBFcnJvclxuIik7Cj4+PiAtwqDCoMKgIGlmICh2YWwgJiBQQ0xfQ0ZH
X1BNRV9NU0lfU1RBVFVTKQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGRldl9kYmcocGNpLT5kZXYsICJQ
TUUgSW50ZXJydXB0XG4iKTsKPj4+ICsKPj4+ICvCoMKgwqAgaWYgKHBjaV9tc2lfZW5hYmxlZCgp
KSB7Cj4+IAo+PiBUaGlzIGNoZWNrcyB3aGV0aGVyIHRoZSBrZXJuZWwgc3VwcG9ydHMgTVNJcy4g
Tm90IHRoYXQgdGhleSBhcmUKPj4gZW5hYmxlZCBpbiB5b3VyIGNvbnRyb2xsZXIuIElzIHRoYXQg
cmVhbGx5IHdoYXQgeW91IHdhbnQgdG8gZG8/Cj4gCj4gVGhlIGJlbG93IHR3byBzdGF0dXMgYml0
cyBhcmUgdmFsaWQgd2hlbiB0aGUgaW50ZXJydXB0IGZvciBNU0kgaXMgCj4gYXNzZXJ0ZWQuCj4g
VGhhdCBpcywgcGNpX21zaV9lbmFibGVkKCkgaXMgd3JvbmcuCj4gCj4gSSdsbCBtb2RpZnkgdGhl
IGZ1bmN0aW9uIHRvIGNoZWNrIHRoZSB0d28gYml0cyBvbmx5IGlmIHRoaXMgZnVuY3Rpb24gaXMK
PiBjYWxsZWQgZnJvbSBNU0kgaGFuZGxlci4KPiAKPj4gCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KHZhbCAmIFBDTF9DRkdfQUVSX1JDX0VSUl9NU0lfU1RBVFVTKSB7Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBkZXZfZGJnKHBjaS0+ZGV2LCAiUm9vdCBFcnJvciBTdGF0dXNcbiIpOwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmlycSA9IGlycV9saW5lYXJfcmV2bWFwKHBwLT5pcnFf
ZG9tYWluLCAwKTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdlbmVyaWNfaGFuZGxlX2ly
cSh2aXJxKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAg
aWYgKHZhbCAmIFBDTF9DRkdfUE1FX01TSV9TVEFUVVMpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGRldl9kYmcocGNpLT5kZXYsICJQTUUgSW50ZXJydXB0XG4iKTsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHZpcnEgPSBpcnFfbGluZWFyX3Jldm1hcChwcC0+aXJxX2RvbWFpbiwg
MCk7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnZW5lcmljX2hhbmRsZV9pcnEodmlycSk7
Cj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiAKPj4gVGhlc2UgdHdvIGNhc2VzIGRvIHRoZSBleGFj
dCBzYW1lIHRoaW5nLCBjYWxsaW5nIHRoZSBzYW1lIGludGVycnVwdC4KPj4gV2hhdCBpcyB0aGUg
cG9pbnQgb2YgZGVhbGluZyB3aXRoIHRoZW0gaW5kZXBlbmRlbnRseT8KPiAKPiBCb3RoIFBNRSBh
bmQgQUVSIGFyZSBhc3NlcnRlZCBmcm9tIE1TSS0wLCBhbmQgZWFjaCBoYW5kbGVyIGNoZWNrcyBp
dHMgCj4gb3duCj4gc3RhdHVzIGJpdCBpbiB0aGUgUENJZSByZWdpc3RlciAoYWVyX2lycSgpIGlu
IHBjaWUvYWVyLmMgYW5kIAo+IHBjaWVfcG1lX2lycSgpCj4gaW4gcGNpZS9wbWUuYykuCj4gU28g
SSB0aGluayB0aGlzIGhhbmRsZXIgY2FsbHMgZ2VuZXJpY19oYW5kbGVfaXJxKCkgZm9yIHRoZSBz
YW1lIE1TSS0wLgoKU28gd2hhdCBpcyB3cm9uZyB3aXRoCgogICAgICAgICBpZiAodmFsICYgKFBD
TF9DRkdfQUVSX1JDX0VSUl9NU0lfU1RBVFVTIHwKICAgICAgICAgICAgICAgICAgICBQQ0xfQ0ZH
X1BNRV9NU0lfU1RBVFVTKSkgewogICAgICAgICAgICAgICAgIC8vIGhhbmRsZSBpbnRlcnJ1cHQK
ICAgICAgICAgfQoKPwoKSWYgeW91IGhhdmUgdHdvIGhhbmRsZXJzIGZvciB0aGUgc2FtZSBpbnRl
cnJ1cHQsIHRoaXMgaXMgYSBzaGFyZWQKaW50ZXJydXB0IGFuZCBlYWNoIGhhbmRsZXIgd2lsbCBi
ZSBjYWxsZWQgaW4gdHVybi4KCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBq
dXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
