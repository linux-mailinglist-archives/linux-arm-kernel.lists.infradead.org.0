Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D992118507F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzSqkoij7SmT+3lvTUY40qGrGBuEH2e7Z0BL58bWH4A=; b=rYLKuJhHAf4b2U
	Dd1DihfNVYCS2CyKbt+UsZ+c2NRpyj3hrkLibkt+oKuhzrN1rVr3EBfMA/h0A5Llb5sDBFs8tCQjE
	RrLDSPw5nTzyFRJCRB8R2HkJbRgrHIzPgSMr6YkPk6emtG+wKypGc+xWqtHilnIQ/bh8reIO3IlEf
	sHyxZqFAUfGdzX5SK+i4nWNfdH+pGK5FS7ITlbJ+1yIOale8v4fAWDjd5SC4Dl3mpAIOhEB6WX5dO
	2s6kviR31wKxqVm+ZflYKbuRsAm7B5K4Mc166kOKLYST4odOirTdXHGacJaVZ7THCLZW6mkTzG+W2
	N8hVQgpfsNNuJpHIiRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrBS-00068f-Fc; Fri, 13 Mar 2020 20:45:30 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrBF-00067e-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:45:19 +0000
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EB12B200004;
 Fri, 13 Mar 2020 20:45:05 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: mach-dove: Mark dove_io_desc as __maybe_unused
In-Reply-To: <20200306125638.8285-1-vincenzo.frascino@arm.com>
References: <20200306125638.8285-1-vincenzo.frascino@arm.com>
Date: Fri, 13 Mar 2020 21:45:04 +0100
Message-ID: <87mu8kx9v3.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_134518_008879_678E69C1 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+IHdyaXRlczoKCj4g
V2l0aG91dCB0aGlzLCB3ZSBnZXQgdGhlIHdhcm5pbmdzIGJlbG93IHdoZW4gQ09ORklHX01NVSBp
cyBkaXNhYmxlZDoKPgo+IGxpbnV4L2FyY2gvYXJtL21hY2gtZG92ZS9jb21tb24uYzo1MToyNDog
d2FybmluZzog4oCYZG92ZV9pb19kZXNj4oCZIGRlZmluZWQKPiBidXQgbm90IHVzZWQgWy1XdW51
c2VkLXZhcmlhYmxlXQo+IHN0YXRpYyBzdHJ1Y3QgbWFwX2Rlc2MgZG92ZV9pb19kZXNjW10gX19p
bml0ZGF0YSA9IHsKPiAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgo+Cj4gQ2M6
IEphc29uIENvb3BlciA8amFzb25AbGFrZWRhZW1vbi5uZXQ+Cj4gQ2M6IEFuZHJldyBMdW5uIDxh
bmRyZXdAbHVubi5jaD4KPiBDYzogU2ViYXN0aWFuIEhlc3NlbGJhcnRoIDxzZWJhc3RpYW4uaGVz
c2VsYmFydGhAZ21haWwuY29tPgo+IENjOiBHcmVnb3J5IENsZW1lbnQgPGdyZWdvcnkuY2xlbWVu
dEBib290bGluLmNvbT4KPiBDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+
Cj4gU2lnbmVkLW9mZi1ieTogVmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFy
bS5jb20+CgpBcHBsaWVkIG9uIG12ZWJ1L2FybQoKVGhhbmtzLAoKR3JlZ29yeQo+IC0tLQo+ICBh
cmNoL2FybS9tYWNoLWRvdmUvY29tbW9uLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gt
ZG92ZS9jb21tb24uYyBiL2FyY2gvYXJtL21hY2gtZG92ZS9jb21tb24uYwo+IGluZGV4IDAxYjgz
MGFmY2VhOS4uZGJlOTcwZTM3ODk1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtZG92ZS9j
b21tb24uYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtZG92ZS9jb21tb24uYwo+IEBAIC00OCw3ICs0
OCw3IEBACj4gIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgo+ICAgKiBJL08gQWRkcmVzcyBNYXBwaW5n
Cj4gICAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqLwo+IC1zdGF0aWMgc3RydWN0IG1hcF9kZXNjIGRvdmVf
aW9fZGVzY1tdIF9faW5pdGRhdGEgPSB7Cj4gK3N0YXRpYyBzdHJ1Y3QgbWFwX2Rlc2MgX19tYXli
ZV91bnVzZWQgZG92ZV9pb19kZXNjW10gX19pbml0ZGF0YSA9IHsKPiAgCXsKPiAgCQkudmlydHVh
bAk9ICh1bnNpZ25lZCBsb25nKSBET1ZFX1NCX1JFR1NfVklSVF9CQVNFLAo+ICAJCS5wZm4JCT0g
X19waHlzX3RvX3BmbihET1ZFX1NCX1JFR1NfUEhZU19CQVNFKSwKPiAtLSAKPiAyLjI1LjEKPgoK
LS0gCkdyZWdvcnkgQ2xlbWVudCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVu
Z2luZWVyaW5nCmh0dHA6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
