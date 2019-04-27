Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC206B47D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tH0+Z3bctN4bGqcda1GL1rBBfgV7GoJkBPFWvpJYDs=; b=jIFsWx5wpkq7r9
	GcDxR0XLBlZg2c7GbvomYndVYBs0/yz+fElf/LFwEr0IKixuS3/64MDZdqtBH1Vu06jVJQ/b2TLLJ
	dmvYw0OEIK2cJhqdBNCqT4ipQVP7rD1MoJZRWOm+d1txKzFbGJbhLRwG0TsWFB201x6i+TpfiwZpJ
	E+HuXGWBdVS923g99897SVqwjCySZ/Ca59vnRuFnzlVuKlZaPclBI2lL1sw1u9f12tyoyu6RcMidZ
	tqdDw4IEa4NA+5yhEd1Sh2uAWfjJ54AvQ7jGIzkkge8TKRjcJWdrmH9Vq1CoOMp3esIj6N7vSo24b
	lWMy1cllKzeFaB67ed9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTq6-0002Pn-7s; Sat, 27 Apr 2019 20:22:26 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTpx-0002Oc-5X; Sat, 27 Apr 2019 20:22:18 +0000
Received: by mail-oi1-x243.google.com with SMTP id t70so12610oif.5;
 Sat, 27 Apr 2019 13:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K6qCTU447E+GH+ZEsRVkg8uU1ixXBH4ZBCI8kFJ0apk=;
 b=bQDs8KX83mjqeAXYeg4iUYNRuabnlNAd08eHnFUOQ4AhdGC7wAekyyuWwBABzzo7Wv
 GfluAUlBgNKirtqWSfsG9xUPGks0oUuZbwwzK5S7jB6R/0ca1/82S6kPzdbQ5UimvfzP
 ty6j0mVf7n+Dv+2En4CGjKHxvgPkPtEfcfW4Hkd2HXhAHQHrcHjK8vTx41krK95l6EEy
 M/v5QE+R71AVZxL//DA3Bx546S4gxPUuqjVJUIrabHeO92/hBRv1pLNyjCh1Rj/Ibivo
 +E4SsymcFCorizPgUDSQqpL+TfxOE3bAXAfwLUx8NiKRzpH0Dp4fcfFSV05bPOtLhEK7
 2FGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K6qCTU447E+GH+ZEsRVkg8uU1ixXBH4ZBCI8kFJ0apk=;
 b=aSMOw9TKeVeUwcyzQ5RpbFeF7OldirsASGa0pIwdGkjcr2v72vcujirqw7dc0krLKk
 kwAO12gqhvw3gUeAjPhsuckBxhCAPX0ktHfQaphMbmEveQj4YTAbYiBjEjsi2PB5TCzr
 Z6U8LRXuatpc3kNNyx8627YI9mbYKdDbmUubGgWokMUxW69PGj6ZTaccpTfLCTV6ympU
 Ck/ghfnzxgJPXWHHrhkeEjbi5YoGN9y4axa4z6WXi3gzKSuVKHpnRlDfP1DCivvDsXA4
 Y3p1Z5z79FJjZur+c0DpkjjieDSnSHtn6SC4tymgLOUfhuuH/VzGhTnp2Qql114uCWQ3
 3+nA==
X-Gm-Message-State: APjAAAUI9kPzsNG3GSx8Q4tHcUu/jIIjdg6/U2h3m0XNP+RIzUvEmUlc
 kIwdmuFw6BYas+Cj+E7Y38vboNO3+RyHixFKkIg=
X-Google-Smtp-Source: APXvYqxtbDt+c3ni9QrEfFfA/TGXkyJbzrtK2r6bmsseXH9+Ux/3nW9LnS5Zoy+n/Q5hAeAy2Afl98S0tgJTO28uQzw=
X-Received: by 2002:aca:5b06:: with SMTP id p6mr10615717oib.129.1556396536284; 
 Sat, 27 Apr 2019 13:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190423091503.10847-1-narmstrong@baylibre.com>
 <20190423091503.10847-5-narmstrong@baylibre.com>
In-Reply-To: <20190423091503.10847-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Apr 2019 22:22:05 +0200
Message-ID: <CAFBinCA7qCmVcz_brXfJ4aiw6ZHvEJ_duhjtEH+znJ3zmL_mmg@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: arm: amlogic: add G12B bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_132217_209274_0CAACD6B 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 11:16 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add compatible for the Amlogic G12B SoC, sharing most of the
> features and architecture with the G12A SoC.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
