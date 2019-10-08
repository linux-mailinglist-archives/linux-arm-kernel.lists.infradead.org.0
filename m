Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C9D03C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 01:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lub3s3PgiT6/2SwmwZhDOqdFTUBbHoXxVCIJ6LrWxiM=; b=lOyhS4UZVms5Ac
	o3tM0msqo7n9tJ9e9eEqoRjkZiaIJ+r4rvzIW0HvSQE63i+BQOmsBk5EMqxIF5QHJPehCy7338lbO
	DLPva6O46qQOGShs2MmMoFQq8ls+8H4fWzx6WAW0m1ibMNSHygPbE7oWzK/ehU4ItW6R1gMO2wvS6
	Jv87MfmdvD+MYdnuSFs/vfLSpuAUUfM9/grE7BQ3IVvxiqBGINCzARruHSN9RY3Mks+Si7p/BfGVZ
	bLL6YBqzZQqz6Ne6hLRr7KZdrnZKjbOl4Qo7L+M2ueARhAf08egtvXPr1WU+OHGzeM3ecA2BmnAIV
	PTTl9BSH+g4qh+evXcYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyVB-00032Z-9m; Tue, 08 Oct 2019 23:02:45 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyV2-00030x-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 23:02:37 +0000
Received: by mail-qk1-x741.google.com with SMTP id 4so455290qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 16:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=FMMLRXtAe40zCMcCtxvdP8i9kT/PLF62chlFdNDSpa8=;
 b=ZFzM3Avgh1nIZ9kRcYhwKQbctGHGKBEN6jhP8dxhduJ+4EPcJfdb2kEs36EGwPKTgY
 GDu8aQ/hL/5/0pTwv3fuQIb7NEH80mv1qvtHUPcsc7IUlxs5BVnnMg1tTykwNYvNgV8e
 U6cvjWUrJCi32I4kQ9et1ar15nltNXj7yQLsGBAHP5fONJlcWrRWecoAIR0PCwqx/fah
 AohsRSAmEUBkgvOT6hpYM+z0EAqfUnvZowytJBkjh18ZY1GnBTSZJ5Jm4uRphbNrAzgv
 0249cyY1Six4SoTA371Mti6zSmwExvlG7oCD2Xv9qNzjaPKZVK7C7/2o2RoBWuVuYZO7
 CgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=FMMLRXtAe40zCMcCtxvdP8i9kT/PLF62chlFdNDSpa8=;
 b=K1kODhEM68uezf0A1UCpKwB540NdQwo7EeCKrwOUvYMpvPMMIm+ZH66x36UZW73Wb6
 pP9fUCPxJ708SBZ3oWNhVXgcCdUDHBwKVbHbZZ0yYKOtPmz/ZxxEiLyDr0lGmpxfS50s
 BmwKP04kyZSntK6vjYkoIcZWqY/WicOV3lYH3Nq34UGM51Ys7f2ORsl0HYE1DFKdACn4
 +QaDY058SfFL4DCQLVRD1UFbFBuDOiIDJX0rvRDm5U/y/LAh3ouiqsBDD6W735iZFqCi
 5hGY8Nz8S1IAEcF+7FZR/LEfLdIbJB2eCD6T+faqJVkWpQM0yZpVFkwDBKQQU4Rb7/ou
 GYhw==
X-Gm-Message-State: APjAAAXYQwAJkkl7WGhfuraGqq+2/p8/q8ItO9gV10LDk4uTLMBKAUHE
 tZf6COY1pyh0OIypzq2P2THr6Q==
X-Google-Smtp-Source: APXvYqxvRqb+z5HpoQj48byKYFHJWFucwPuLS22/dDgDrpAZfGfXzGsk3d6nAPeBA6lls6A278C1Zg==
X-Received: by 2002:a37:a646:: with SMTP id p67mr569346qke.489.1570575754654; 
 Tue, 08 Oct 2019 16:02:34 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id a19sm204875qtc.58.2019.10.08.16.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 16:02:34 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:02:22 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v2 0/2] Update MT7629 to support PHYLINK API
Message-ID: <20191008160222.0bdb7f47@cakuba.netronome.com>
In-Reply-To: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_160236_186453_1AD021D8 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, 7 Oct 2019 15:08:42 +0800, MarkLee wrote:
> This patch target to update mt7629 eth driver and dts to support PHYLINK

Thanks for the patches Mark. The description of the set should probably
say that it _fixes_ some issues. Right now it sounds a little bit like
you were adding a new feature. Could you rewrite the cover letter to
give us a better idea what issues this patch set is fixing and why
those issues occur?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
