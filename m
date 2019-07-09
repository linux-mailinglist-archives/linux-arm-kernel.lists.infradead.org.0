Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD2063AF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm20fk87qiulpr1Jvr3dROs9a+y2uW9CdlbKXK1rEB8=; b=B4cxo9nFP5mtzF
	9IAThtOGO5y7iY4VPvGDgFI81PfvQmlohPwEd36DXu+FsSjMumzW5xPavMP/8nQNtyledVRWGCyL5
	+koY7ucKQwRewv1vkEjE1JHR6VWezK+zVjP/d+SpygzI4sUS7gxDasSYAHQu4zEx3LlOyK83JNq1m
	1L3EDzJWIgwRkuJKiU9+g/plgobld6S5WSducZ/jIlUfzhxYwnzv+qvPOzDrvwGcMAcj05kTRZ0q3
	xFAXWfkApoajj4T2GI2DBkrAjcdSPQcfDLyHwzh/r1Dlsfx6BVIf2ECDmtQWbGzG0S7TfA/hYA9dQ
	e66TgI1gABcnwZ8qmDyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkurs-0003qO-G3; Tue, 09 Jul 2019 18:29:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkurk-0003px-A4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:29:25 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A197B2087F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jul 2019 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562696963;
 bh=pUZIeC1S9z7OJMHABuIQ2/WFjaI1KT27EcpgVYoUwaA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2vnakC3yYM5AyoyldeQx0/K4PMoIrqyyubnkr1KBLlSHia56aVzXLqFQN5GISTAPL
 QL6BmNAkPzIildPxSZFm0QZZ7bLlOUfNDyGyukw9scj6hgsgE6IoVs8+yFr1UPnuHT
 zgiu5PLf9iuOPckZF3gJpxTKI/1/VbQOep/G7mlY=
Received: by mail-qt1-f177.google.com with SMTP id h21so20443488qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:29:23 -0700 (PDT)
X-Gm-Message-State: APjAAAV15tA2F3mD+yGAPK9sTey1Ks9A5Jz/THmwgEq9lcMe/G4tN3oj
 EXNa9arK0hGUVSshuHimqy6i+fj+XZ3vM/QNcQ==
X-Google-Smtp-Source: APXvYqwbmrL/V//0g8rzcfG0Up30/DlFA0VgMobiAbQUSjeUKKolaQXczlK0u67eBPBMMb1j71KIkj8Jborh0LxqxNM=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr19874524qtb.224.1562696962930; 
 Tue, 09 Jul 2019 11:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190618212229.32302-4-robh@kernel.org>
 <20190709171508.GA10127@Mani-XPS-13-9360>
In-Reply-To: <20190709171508.GA10127@Mani-XPS-13-9360>
From: Rob Herring <robh@kernel.org>
Date: Tue, 9 Jul 2019 12:29:11 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
Message-ID: <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to
 json-schema
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112924_363189_E91159FE 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgOSwgMjAxOSBhdCAxMToxNSBBTSBNYW5pdmFubmFuIFNhZGhhc2l2YW0KPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IE9u
IFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDAzOjIyOjI4UE0gLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3Rl
Ogo+ID4gQ29udmVydCBSREEgTWljcm8gU29DIGJpbmRpbmdzIHRvIERUIHNjaGVtYSBmb3JtYXQg
dXNpbmcganNvbi1zY2hlbWEuCj4gPgo+ID4gQ2M6ICJBbmRyZWFzIEbDpHJiZXIiIDxhZmFlcmJl
ckBzdXNlLmRlPgo+ID4gQ2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRo
YXNpdmFtQGxpbmFyby5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPgo+ID4gLS0tCj4gPiBBbmRyZWFzLCBVcGRhdGUgdGhlIGxpY2Vuc2Ugb24gdGhp
cyBvbmUgdG9vIHRvIGR1YWwgbGljZW5zZWQgaWYgeW91Cj4gPiB3YW50Lgo+Cj4gSSdtIGZpbmUg
d2l0aCBHUEwtMi4wLiBTaW5jZSB0aGVyZSBpc24ndCBhbnkgb3RoZXIgUkRBIHNwZWNpZmljIHBh
dGNoZXMKPiBpbiBteSB0cmVlLCB5b3Ugd2FudCB0byB0YWtlIHRoaXMgcGF0Y2g/IEVsc2UgSSBo
YXZlIHRvIHNlbmQgdGhlIFB1bGwKPiBSZXF1ZXN0IHRvIEFSTSBTb0MgZm9sa3Mgd2l0aCB0aGlz
IHBhdGNoIGFsb25lLgoKT2theSwgSSBjYW4gdGFrZSBpdC4gVGhlIHByZWZlcmVuY2UgaXMgYWN0
dWFsbHkgZHVhbCBsaWNlbnNlZCB3aGljaCBpcwp3aHkgSSBhc2tlZCwgYnV0IHRoYXQgY2FuIGJl
IGRvbmUgbGF0ZXIuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
