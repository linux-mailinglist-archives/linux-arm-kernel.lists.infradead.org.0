Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F697DB0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCXmmVgp9NLNv2fkx7+UIq7yJJvtekP9fJ4ZZW4NDfA=; b=cn3xDqXmySoAP2
	FnYg5JSZ833sRP8nfiq5n80rx5w/WAqmHPTZjo9JfnaVwRjCMGzpEeDyF8xhpXk6EhKHhy0dB7dLk
	7XXc+Lgyw+A72Sd9S6TbYSaWE/pnfZGT+8B8CYo+LFJRmMBRAXx2KQtK8YxnzYt6TDzk3g07C22JU
	P6s5Ti/nXDpMJaktdzrkxxeFLhm9CM6gPNqvylYAIWuEqp8t+XdiyUQry4AXaj6k9kufzpRSLB1TT
	+2fCkfvTzCA1CQf1PfRfffLGMqUNDbkZH5qZZXzrZbn0CQQZw2ushiIRSLF9MuuaMALKtOir2NNu0
	In3Nmp4/dGI9W9gZ8csw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9xH-0003di-EU; Thu, 01 Aug 2019 12:13:11 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9tz-0007pY-7L
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:09:48 +0000
Received: by mail-qt1-x843.google.com with SMTP id l9so69863202qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 05:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4ZQ6TiKkp7FeZK0ooFcm/uroirFmJLs2m0Bg+zbC2WU=;
 b=d/b9IEHcXeYgcPKyu5UOkSrhbTP7nrZ9KXUmPqRUp1iIn8CmH1lqJYX/r5AGx/0zFV
 Od39MpqwOefCYos+oJY3aXdBU2283zsDVAEbJoNb5ZXYhoT4zdXGFehqbQx5P1UHeUwr
 NdSg/uIOrcAqKfp4Lb4xxsBWwkPe1EKmJRi/h5N+LcD/CXhQJNev+z0vsBg5PD8kthcA
 OS9GZ8NfDwDQp92qU4nJoB64gImJjr48hkawnZi60Zd38Yr0I2LhUDO8NwQSdrWDeLJo
 Jnq7F6leWN/VM5IcbxcC4sqmkTxFZE/qq/IXY4jAIFWHdOpiHSuNYlPSpKHi1j5fHtW/
 mc0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4ZQ6TiKkp7FeZK0ooFcm/uroirFmJLs2m0Bg+zbC2WU=;
 b=NAO0QIwaJfPnvqVXIgAficT5BO5mfAiige2iMbCRzgCOT3h0d22Q0ZBVT8Omoa9cdZ
 cscYNlplzSIMKp2F+Yw2UNgKqPxp0he09RzCkIlVkW8sv5zUogbDV5441x0AweA2wXW2
 II39ad/3eQeaXVSoUa9KGe4Ig7nqHgyjVHxK0jddTKJ6VMIuU1LPYaiwLBUNslKT+WrD
 uSpmSCkUIAU3kwddnIC0gqU7K8ZdcxOl97m0U1b1zdfanJXictxxAAEhBxYOlN74fHPC
 AjqBh64BJvKg+YaV6SKbpYpG0rNuayxFDuXf4i3pgBeAV1nCqMhff+7ReVtdOkrfgJG3
 3AOQ==
X-Gm-Message-State: APjAAAV3WtWVJ+W1Cl9xr6sM0wbx7vu+nOOSxkgK++3bLF5eA6yt0qEk
 Gy0YR6GtfPl0ATIkakiwIMPudw==
X-Google-Smtp-Source: APXvYqx/PTh7ds9WIw967/F8IV3FNPmp/Cllds5C7Wl5yNxFCD9qgsWHSEcpCPOgx/NdTTaexBlSRg==
X-Received: by 2002:aed:23ef:: with SMTP id k44mr86879052qtc.202.1564661386475; 
 Thu, 01 Aug 2019 05:09:46 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id v84sm31265914qkb.0.2019.08.01.05.09.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 05:09:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64/mm: fix variable 'tag' set but not used
From: Qian Cai <cai@lca.pw>
In-Reply-To: <5E9F5456-3B82-4CB8-868B-1C7B4CBE4CBC@lca.pw>
Date: Thu, 1 Aug 2019 08:09:44 -0400
Message-Id: <16BFDECA-7774-49D0-A68C-86711E10DDC5@lca.pw>
References: <1564605498-17629-1-git-send-email-cai@lca.pw>
 <20190801120121.6cmtho3wd32nzfoz@willie-the-truck>
 <5E9F5456-3B82-4CB8-868B-1C7B4CBE4CBC@lca.pw>
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_050947_321297_FAADE942 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andreyknvl@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyAxLCAyMDE5LCBhdCA4OjA3IEFNLCBRaWFuIENhaSA8Y2FpQGxjYS5wdz4gd3Jv
dGU6Cj4gCj4gCj4gCj4+IE9uIEF1ZyAxLCAyMDE5LCBhdCA4OjAxIEFNLCBXaWxsIERlYWNvbiA8
d2lsbEBrZXJuZWwub3JnPiB3cm90ZToKPj4gCj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDA0
OjM4OjE4UE0gLTA0MDAsIFFpYW4gQ2FpIHdyb3RlOgo+Pj4gV2hlbiBDT05GSUdfS0FTQU5fU1df
VEFHUz1uLCBzZXRfdGFnKCkgaXMgY29tcGlsZWQgYXdheS4gR0NDIHRocm93cyBhCj4+PiB3YXJu
aW5nLAo+Pj4gCj4+PiBtbS9rYXNhbi9jb21tb24uYzogSW4gZnVuY3Rpb24gJ19fa2FzYW5fa21h
bGxvYyc6Cj4+PiBtbS9rYXNhbi9jb21tb24uYzo0NjQ6NTogd2FybmluZzogdmFyaWFibGUgJ3Rh
Zycgc2V0IGJ1dCBub3QgdXNlZAo+Pj4gWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+PiB1
OCB0YWcgPSAweGZmOwo+Pj4gICAgXn5+Cj4+PiAKPj4+IEZpeCBpdCBieSBtYWtpbmcgX190YWdf
c2V0KCkgYSBzdGF0aWMgaW5saW5lIGZ1bmN0aW9uLgo+Pj4gCj4+PiBTaWduZWQtb2ZmLWJ5OiBR
aWFuIENhaSA8Y2FpQGxjYS5wdz4KPj4+IC0tLQo+Pj4gYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9t
ZW1vcnkuaCB8IDYgKysrKystCj4+PiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4+PiAKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L21lbW9yeS5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaAo+Pj4gaW5kZXggYjdi
YTc1ODA5NzUxLi45NjQ1YjEzNDBhZmUgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL21lbW9yeS5oCj4+PiArKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5o
Cj4+PiBAQCAtMjEwLDcgKzIxMCwxMSBAQCBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcga2Fz
bHJfb2Zmc2V0KHZvaWQpCj4+PiAjZGVmaW5lIF9fdGFnX3Jlc2V0KGFkZHIpCXVudGFnZ2VkX2Fk
ZHIoYWRkcikKPj4+ICNkZWZpbmUgX190YWdfZ2V0KGFkZHIpCQkoX191OCkoKHU2NCkoYWRkcikg
Pj4gNTYpCj4+PiAjZWxzZQo+Pj4gLSNkZWZpbmUgX190YWdfc2V0KGFkZHIsIHRhZykJKGFkZHIp
Cj4+PiArc3RhdGljIGlubGluZSBjb25zdCB2b2lkICpfX3RhZ19zZXQoY29uc3Qgdm9pZCAqYWRk
ciwgdTggdGFnKQo+Pj4gK3sKPj4+ICsJcmV0dXJuIGFkZHI7Cj4+PiArfQo+PiAKPj4gV2h5IGRv
ZXNuJ3QgdGhpcyB0cmlnZ2VyIGEgd2FybmluZyBpbiBwYWdlX3RvX3ZpcnQoKSwgd2hpY2ggcGFz
c2VzIGFuCj4+IHVuc2lnbmVkIGxvbmcgZm9yIHRoZSBhZGRyZXNzIHBhcmFtZXRlcj8KPiAKPiAj
ZGVmaW5lIHBhZ2VfdG9fdmlydChwYWdlKSDigKYgX190YWdfc2V0KF9fYWRkciwgcGFnZV9rYXNh
bl90YWcocGFnZSkpOyDigKYKPiAKPiBzdGF0aWMgaW5saW5lIHU4IHBhZ2Vfa2FzYW5fdGFnKGNv
bnN0IHN0cnVjdCBwYWdlICpwYWdlKQo+IHsJCj4gCXJldHVybiAweGZmOwo+IH0KPiAKPiBHQ0Mg
d2lsbCBzZWUgdGhhdCDigJxwYWdl4oCdIGlzIHVzZWQuCgpJZiB5b3UgYXJlIHRhbGtpbmcgYWJv
dXQg4oCcYWRkcuKAnSwKCiNkZWZpbmUgX190YWdfc2V0KGFkZHIsIHRhZykJKGFkZHIpCgpJdCBp
cyBhY3R1YWxseSB1c2VkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
