Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D29AD8047
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7MV5wtvdXPyHBRPne0LOGUcialm4NVdxN+JAswrhiQ=; b=GSi4b9pxA6i8s9
	0oZ2DG7maDY/U/XQlZHuaV82a8S8IgCF0DCmhZnvlzkKIhMtbzr41iMMv67llj6C9cSFWQx9UJeSq
	7PnUooO4IJ1Jtv4J36uI+WpJ6l0e55ZwXNI2h724FVCm/HBTJZEXJyF7f75QtAoFq8KCe1CpN4+zc
	2mmeEo3aoE7SYULvYHlWz7/O7c8Wk7ymb7Bosz0LSa7/ravbhu/TJGpJRPXwzLJyc1qaUuqB814BA
	KOdlXgkPQpnj1oEFbOfmFw0BJNKzV5h5YMkU1CddLQoCIFQqYxTfAeiTJH1OYzVTmNFzPvPTJAgm4
	NDlMq4zDxJ8wfHiH7a/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSVA-0006lu-47; Tue, 15 Oct 2019 19:29:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSUw-0006kJ-5h
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:28:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id i16so287005wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 12:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=EbAnyTOslp6v1Q8FsmUFH6BpJr8FNaYvIMIlQEjnqCI=;
 b=G90I0dyrX3/1JAVSlVemOrG13hF203/pZ3Lk38+XtGFF4rkUlZ/iPoV1/27W04fCiN
 rLpCP/3Dz4tB/k9Gq51AKs4+FJ1LW3x+x/bQdVmWSl036tb3ZB/sSuRMc0A3vXrj25ZN
 i7dh49TtP7P6EGenJ5aLCCZT9aHDh8pSWd5g04fxKv3T+uQL22Cn0LUD4jDYyOAnZllD
 1kjxE3kIPbGN3ZQR9vPIA6GQAbuZE/2M2uwOgW7IFirWuitnCb86tY9t2WShf+n+d/by
 vvR7SIag0PpihD6oqYflk2DE7u4BsxgixPGQTxK/LkrkBW4o7ur01/8OJwnqNhUXb1Py
 QjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=EbAnyTOslp6v1Q8FsmUFH6BpJr8FNaYvIMIlQEjnqCI=;
 b=g0Rm78XMzPVioxSt+do2FxtMkdy9z2zs12E10+OW8NzRMy3f6ppdHF6xXTzPtsaGAY
 q4ogzBHo222cmC2ncI4OxtJ7EDn3aagihwKUzhIw2isBo20gkeR1W0N4qjx7w5cHpBVR
 eBB9FPvtqojmbtVYYtXJWas0NRaa6e6AVqb4Gb7Nh+lRV20y6J5N1mBeHROUb1Q/9pQp
 XUYVzAwIDlfqZTUnxIonJI1e4kqSEi5CZvLCB8INyzWIvsZmebTifUQCXP2GlrBnMpHN
 cVlRU4LspevQ4KdLwgRrCX2wkhPmJxhzMxoA2WyNJ73JNLLFevnNuVKXpBUf4CoQTLKk
 JdAg==
X-Gm-Message-State: APjAAAXJuOq7uiGLVn1zDBWbnORrZgWQiQLgJd7hYJttBMkzsDe68Jlz
 vnXqbbZTdJw0QJj/fV2OkbovXQ==
X-Google-Smtp-Source: APXvYqz7nP0l7vdHzimkwgpLFEg+eNxzWXUfJJzNLYDn7AUPiBz5wwZf6tij4i9ykaeLXoR8PZtrxQ==
X-Received: by 2002:a05:600c:2318:: with SMTP id
 24mr60488wmo.146.1571167724173; 
 Tue, 15 Oct 2019 12:28:44 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id i1sm342582wmb.19.2019.10.15.12.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:28:43 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:28:36 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v3 1/2] net: ethernet: mediatek: Fix MT7629 missing
 GMII mode support
Message-ID: <20191015122836.78bff48f@cakuba.netronome.com>
In-Reply-To: <20191014071518.11923-2-Mark-MC.Lee@mediatek.com>
References: <20191014071518.11923-1-Mark-MC.Lee@mediatek.com>
 <20191014071518.11923-2-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_122846_210263_871B4018 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 15:15:17 +0800, MarkLee wrote:
> In the original design, mtk_phy_connect function will set ge_mode=1
> if phy-mode is GMII(PHY_INTERFACE_MODE_GMII) and then set the correct
> ge_mode to ETHSYS_SYSCFG0 register. This logic was broken after apply  
> mediatek PHYLINK patch(Fixes tag), the new mtk_mac_config function will
> not set ge_mode=1 for GMII mode hence the final ETHSYS_SYSCFG0 setting 
> will be incorrect for mt7629 GMII mode. This patch add the missing logic
> back to fix it.
> 			 
> Fixes: b8fc9f30821e ("net: ethernet: mediatek: Add basic PHYLINK support")
> Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>

LGTM, thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
