Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A120FCC490
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+42D9IRULPZa/mVr3BeCCT1OqKTWpwErIiHlWTmbG0=; b=ZRidy4xb5ki7fp
	51m71k/tsZT36N2LI/AMzUR4EDFyHuR8PrnpwCMMT2hw2haCkf0qf4uQO+RB+hvnNbxXHHaMm4Uzw
	DaENB98FSr3KzRtOwIcDuYDdjuxPbsWrBa40untPvXerj2SQMcgBXNnLlZPb08SYmjANfmC4Mt/Li
	Dj4QvY/Ro5Npy7XOFrhiwkzbtBOeIBjNtDgzcgs+P6ltMddkRIdWli9No6xILglog41ky3E3N7oGq
	phaANzK623KSLTDCgHW+UMZE59DLfG/wFf5+khz5Jmd9MReeEPCKGB5V+dUikxDkm0l7SAB/5qRqJ
	C93BKVsRsRMkJT54a6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUoL-0005sw-6C; Fri, 04 Oct 2019 21:08:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUoD-0005s0-CL
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:08:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id 72so5399424lfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HhK03oaSMo/8bfjDBpniHapGQAbMA85rfpZvXfLdmYE=;
 b=R/zTVZ9cr4Dv8veyibem6M6FqmnA1nRbPvXXGJhzC3vvRGdG4nQviiDVwQKAqeNO/Q
 j4G8zEWfji9Q79jp5eAF7Vrq0wcotCPVwy1nvuwPt3mBdfAFiuz9RhbZieNyMqfjMrlN
 lQ591WIa5foe+e1z6YOquDkGDQOeSW5umDpND2DY7gOIsHkbDT6s3YjCQS3U//XcfoQq
 e/s/oEgmdH6EbtFD/PzvfTviSN0w6EUlBlACaac32wmHxBoig/rsdE4EIeygRCEI0hJJ
 htXNEaLS7gnR7K8DOeTLvre3Lz28CRvH1hg6CpnbzVaMwi0tC+B/JUAU+02JAjGkCVsv
 pkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HhK03oaSMo/8bfjDBpniHapGQAbMA85rfpZvXfLdmYE=;
 b=oZVDBB4T95j5OMBBrTZeJ+ISuupeqOHtLWIQ3iI1vZKCkCURx5/qVtKE7IjptNchcR
 GADwaFfbSapa/qXNb2ZujrHiLMeGQKws17lU5CTccigkBinsTws2hypi7vYqJ6BbtzEu
 vxwzPCcYcUmqWX5sE6PU+j7ymhx/9AwporuTblhCOkPdLvxSRcekRw6pLt+5BRY7EfC2
 bKUyHrZljzuRCmhkzX0pu6GCGz7arfSJYZP5GF+7kNFxx4VuQ2nvolNcosMstRuOw9hR
 w5+ZR1w+xYnmgpOpShoPis90sIxpuH1sh+wASzodtyJmK21OshlwH+rMfW66uQcWMw5o
 GHmw==
X-Gm-Message-State: APjAAAXLWSrrjD+hicihqCDHBcypCMHZG3EkBCybZvAwwLf9no1ygXmt
 ilbszGv2zMQYMqp3+c77JClRaDsD4Sp3O6J7nkwU6w==
X-Google-Smtp-Source: APXvYqwcJ2IUcDRtVTDYiQp+7VS7VKfkfuUC7BqSpv7lLTzAiR1ku6ptlziiaElGrVcXfadjuMfj784U4pQ1Sg51j4k=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr10121755lfp.61.1570223294668; 
 Fri, 04 Oct 2019 14:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <af65355e-c2f8-9142-4d0b-6903f23a98b2@web.de>
 <CH2PR02MB700047AFFFE08FE5FD563541C78E0@CH2PR02MB7000.namprd02.prod.outlook.com>
 <bd860b05-f493-20e6-083d-66ef3cb61f60@web.de>
In-Reply-To: <bd860b05-f493-20e6-083d-66ef3cb61f60@web.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2019 23:08:02 +0200
Message-ID: <CACRpkdZPnRJWojgRsZvSTDWuxbOtQws5uQXDSPBBem6HE8iJgA@mail.gmail.com>
Subject: Re: [PATCH v2] ethernet: gemini: Use devm_platform_ioremap_resource()
 in gemini_ethernet_probe()
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_140817_428026_8229CCE5 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Radhey Shyam Pandey <radheys@xilinx.com>, netdev <netdev@vger.kernel.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMTE6MjMgQU0gTWFya3VzIEVsZnJpbmcgPE1hcmt1cy5F
bGZyaW5nQHdlYi5kZT4gd3JvdGU6Cgo+IEZyb206IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVz
ZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiBEYXRlOiBGcmksIDIwIFNlcCAyMDE5IDEwOjUyOjU2ICsw
MjAwCj4KPiBTaW1wbGlmeSB0aGlzIGZ1bmN0aW9uIGltcGxlbWVudGF0aW9uIGJ5IHVzaW5nIHRo
ZSB3cmFwcGVyIGZ1bmN0aW9uCj4g4oCcZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNl4oCd
IGluc3RlYWQgb2YgY2FsbGluZyB0aGUgZnVuY3Rpb25zCj4g4oCccGxhdGZvcm1fZ2V0X3Jlc291
cmNl4oCdIGFuZCDigJxkZXZtX2lvcmVtYXBfcmVzb3VyY2XigJ0gZGlyZWN0bHkuCj4KPiAqIFRo
dXMgcmVkdWNlIGFsc28gYSBiaXQgb2YgZXhjZXB0aW9uIGhhbmRsaW5nIGNvZGUgaGVyZS4KPiAq
IERlbGV0ZSB0aGUgbG9jYWwgdmFyaWFibGUg4oCccmVz4oCdLgo+Cj4gVGhpcyBpc3N1ZSB3YXMg
ZGV0ZWN0ZWQgYnkgdXNpbmcgdGhlIENvY2NpbmVsbGUgc29mdHdhcmUuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBNYXJrdXMgRWxmcmluZyA8ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+CgpTZWVt
cyBjb3JyZWN0LgpSZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5h
cm8ub3JnPgoKQlIKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
