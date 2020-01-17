Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C8E140F34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+Mw3DXoE08VtjLakcUUNB3LxhGg4LZDQRYBC+6D7SQ=; b=Ef55LCNmDgkZ9/
	LakTAvLfAbfuit6RIpYoQKNI6/NSgVI9K0m4bnJ4ZDCm75fS/wvrzbsfk2kTl7f+MThyT9cVAYt3f
	CznFtigmKHfBAKzshq3RnCuUVgqKGattgjBQKs3oXg5hXU2uzmaP2ZWVY3Qcp3yeGdFn328YxhEBV
	Rk70DuJHH7sqMxVvY3iS5y5chCEy/DSw0XSUxfODvFAlunhI1g+uIAozsE7YjsDe5PPVVWhKoserW
	mUbi2sTpI0ILm3nC4r3Z6Dj5mmmnxGRI+6GQ+oVY+y5SyvGoZmqqWn6uzQpUlXLtJTzv8CT2uSwHv
	Ml4zBYUZ/9/SZPieD1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUiq-0005Xw-Hi; Fri, 17 Jan 2020 16:43:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUid-0005XT-SM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:43:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ED4821582;
 Fri, 17 Jan 2020 16:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579279415;
 bh=G1GMCKz+KYWoTv7xwhaxZ9FOj/U6GgKahzcRoCDL7nc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qrzNAhIW/nxx4gbOV3nGdJTt3VzyzuBYtXqYF2dqxqNP0PcaBP63x1VuKAbyS8Mvm
 tIaacv1AQpij7q9M39byXWsZVPJi0S5hKUDd31qlhWA8HZZHe0CeF5Q+wGglFl5q2e
 kZQlBDYvMIPX9roIb4s/VYLqUmFePq6a4p0pOjRU=
Date: Fri, 17 Jan 2020 16:43:31 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v11 0/2] ARMv8.5-RNG support
Message-ID: <20200117164330.GB12507@willie-the-truck>
References: <20200117152642.4905-1-broonie@kernel.org>
 <20200117161744.GA12507@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117161744.GA12507@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_084335_997737_026E2B32 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDQ6MTc6NDRQTSArMDAwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDM6MjY6NDBQTSArMDAwMCwgTWFyayBCcm93
biB3cm90ZToKPiA+IFRoaXMgc2VyaWVzIGlzIGJhc2VkIG9uIFJpY2hhcmQgSGVuZGVyc29uJ3Mg
cHJldmlvdXMgdjcsIGl0IGFkZHJlc3Nlcwo+ID4gcmV2aWV3IGNvbW1lbnRzIGZyb20gdGhhdCB2
ZXJzaW9uIGJ5IGRyb3BwaW5nIHRoZSBib290IHRpbWUgUk5HCj4gPiBzdXBwb3J0IGFuZCBhZGRz
IGEgbmV3IGNoYW5nZSB0aGF0IHVzZXMgdGhlIHY4LjUtUk5HIGV4dGVuc2lvbiB0bwo+ID4gc2Vl
ZCBLQVNMUiB3aGVuIEFSQ0hfUkFORE9NIGlzIGVuYWJsZWQuICBUaGUgYm9vdCB0aW1lIHN1cHBv
cnQKPiA+IHdpbGwgYmUgcmUtYWRkZWQgbGF0ZXIsIHRoZXJlIGFyZSBhd2t3YXJkIHBvdGVudGlh
bCBpbnRlcmFjdG9ucwo+ID4gd2l0aCBDUFUgZmVhdHVyZSBlbnVtZXJhdGlvbiB3aGljaCBuZWVk
IGEgYml0IG1vcmUgdGhvdWdodC4KPiAKPiBUaGFua3MsIGJ1dCB0aGlzIGZhaWxzIGFuIGFsbG1v
ZGNvbmZpZyBidWlsZCBmb3IgbWU6Cj4gCj4gCj4gYXJjaC9hcm02NC9rZXJuZWwva2FzbHIuYzog
SW4gZnVuY3Rpb24g4oCYa2FzbHJfZWFybHlfaW5pdOKAmToKPiBhcmNoL2FybTY0L2tlcm5lbC9r
YXNsci5jOjEyNzo2OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCY
X19lYXJseV9jcHVfaGFzX3JuZHLigJk7IGRpZCB5b3UgbWVhbiDigJhfX2Vhcmx5X3Bmbl90b19u
aWTigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgaWYgKF9f
ZWFybHlfY3B1X2hhc19ybmRyKCkpIHsKPiAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fgo+ICAg
ICAgIF9fZWFybHlfcGZuX3RvX25pZAo+IGNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVk
IGFzIGVycm9ycwo+IAo+IAo+IChubyBnY2MsIHdlIGRpZG4ndCBtZWFuIHRoYXQhKQoKQWxzbyBm
YWlscyBvbiBkZWZjb25maWcsIHNvIHNob3VsZCBzYXZlIHlvdSBhIGJpdCBvZiB0aW1lLgoKV2ls
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
