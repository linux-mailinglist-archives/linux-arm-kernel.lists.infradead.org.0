Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911FD201D41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrCxW5PUMec36gp/PndFks0ee2dp6YXrXgvR+8jiUHY=; b=AZ5bcjMqDbssdS
	Q7n9iucFzeGQj7BgKmEiF51JL+OTJkzJr+iBBo7KVSrF5KqsaMWEmUsgmychMTImar/Rq+b9DhSb6
	PfgHmqwN8Cp1AxEfWdDxvvWrsIhmQwAJwRqtjqqrBaDVJSTlgZloaG+fqLqx8rqL8cv6ynoP5E6KO
	alEhwIaHjtLtbZ5LyuYx4OXT+pPPBinv915XNbFxWLFMdO2pReNLeheeJIsmMPXbx/WTjqH4zEdWa
	VrcGgFvZ85LHLeaQWyIGpgJMtDdMjU/NhT833Bi+59RifUZLeWU+L10PUNc3qcz8H1DALLidQDPyL
	ie1YJdOoEJf8tQYrCVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOok-0000Qz-Ik; Fri, 19 Jun 2020 21:44:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOob-0000Nl-Dw
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:44:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id c17so13096897lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 14:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1sgAegVrY9blSblu1TZdk7ru84pddJSX7s1mWVjCFHY=;
 b=Czjl8mUsGQTc1lSxSGKZDq2qIkoZ6c0YedfwqNeO9/0T7FCtDoH+6WQFrBv2cBzdn+
 cTlij+NcIB4hw/sztztKsjOJucRgSFPXQMIUqc4n5vKPHw/RW79ubQomSySgo+NcLgV7
 aYSd0pWD9fM9pHvWiGDu/X2JWn10thzLPJ/ywt4Kr5xfTicjCy4EfEOfJ4l7T2s+12WR
 7DYdsRHaleYRTMnzSDkHx2Bd4WaYvBuGAuHV07pIZjiBZXqrzVJ6JcamAqWj61NbgJth
 RuR6z4fvyJrc606GLz6XhDXvx6iQY1LjQnPQEz6Ey8+H4RHrG+VTDCXPBvL8d1MtdJ49
 53Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1sgAegVrY9blSblu1TZdk7ru84pddJSX7s1mWVjCFHY=;
 b=f6+ZSL2T0mVzkvsaxvppopW/nWWPfGsb7A/OlgLtF3JcEl6xdJABgX2rT60GLGVN/P
 i8iuwmGlVlx2CojXI8v+Q2FsuuMG4brrt+BPvpuebv5WmuxeE09Asg7caVbXjGQewh9U
 A6JFP8RFlE39IIzwdTotxYY5rZbaaIE6oyxfNcDNfCN5JJ2+0V0orHsupUXy0u+NUrq0
 o96c/NNXCRItJilyH1LpZqevBLMBGAkcXCk4pR6yzXBNAVA15wQKgVphXD7S6xpnqqwB
 mQQ5npGaJd+DGzzj+SS4NSbYD0DPjpz6OPYi7KTpalzKwqm8wtacbkN9GW1eKRBHxCp6
 DdCg==
X-Gm-Message-State: AOAM531gm3ilcQ0kEApMdghoIV4MDqCaw6aQPm6yIYOckApIx4BaIRme
 ouFY6QwQbUEGVpXRVzM/88XsbJXEJ2R0kKgpsbE=
X-Google-Smtp-Source: ABdhPJzth0b/GB5i9sTZrVdEB33+r8JFn7mOeJFab1oUENjMBKqhM+AUuD9N/PknddsJzKwtRM4C3kCreusmjXDymdk=
X-Received: by 2002:a05:651c:2050:: with SMTP id
 t16mr2568936ljo.178.1592603083925; 
 Fri, 19 Jun 2020 14:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200619213347.27826-1-horia.geanta@nxp.com>
 <20200619213347.27826-2-horia.geanta@nxp.com>
In-Reply-To: <20200619213347.27826-2-horia.geanta@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 19 Jun 2020 18:44:32 -0300
Message-ID: <CAOMZO5AMe-nDdaP+jVeUHEGn_FXiN9x29PsvDGzUmd9bRD3T6Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: imx6sl: fix rng node
To: =?UTF-8?Q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_144449_520835_B8966088 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Martin Kaiser <martin@kaiser.cx>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Matt Mackall <mpm@selenic.com>, Silvano Di Ninno <silvano.dininno@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSG9yaWEsCgpPbiBGcmksIEp1biAxOSwgMjAyMCBhdCA2OjM0IFBNIEhvcmlhIEdlYW50xIMg
PGhvcmlhLmdlYW50YUBueHAuY29tPiB3cm90ZToKPgo+IHJuZyBEVCBub2RlIHdhcyBhZGRlZCB3
aXRob3V0IGEgY29tcGF0aWJsZSBzdHJpbmcuCj4KPiBpLk1YIGRyaXZlciBmb3IgUk5HQyAoZHJp
dmVycy9jaGFyL2h3X3JhbmRvbS9pbXgtcm5nYy5jKSBhbHNvIGNsYWltcwo+IHN1cHBvcnQgZm9y
IFJOR0IsIGFuZCBpcyBjdXJyZW50bHkgdXNlZCBmb3IgaS5NWDI1Lgo+Cj4gTGV0J3MgdXNlZCB0
aGlzIGRyaXZlciBhbHNvIGZvciBSTkdCIGJsb2NrIGluIGkuTVg2U0wuCgoiTGV0J3MgdXNlIgoK
Pgo+IEZpeGVzOiBlMjlmZTIxY2ZmOTYgKCJBUk06IGR0czogYWRkIGRldmljZSB0cmVlIHNvdXJj
ZSBmb3IgaW14NnNsIFNvQyIpCj4gU2lnbmVkLW9mZi1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEu
Z2VhbnRhQG54cC5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzbC5kdHNpIHwg
MiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnNsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c2wu
ZHRzaQo+IGluZGV4IDkxMWQ4Y2Y3N2YyYy4uMWYwZjI1MGVlMTc1IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDZzbC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnNsLmR0c2kKPiBAQCAtOTM5LDggKzkzOSwxMCBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAg
IH07Cj4KPiAgICAgICAgICAgICAgICAgICAgICAgICBybmdiOiBybmdiQDIxYjQwMDAgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14MjUtcm5n
YiI7CgpCZXR0ZXIgdG8gdXNlOgoKIGNvbXBhdGlibGUgPSAiZnNsLGlteDZzbC1ybmdiIiwiZnNs
LGlteDI1LXJuZ2IiOwoKYW5kIGRvY3VtZW50IGZzbCxpbXg2c2wtcm5nYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
