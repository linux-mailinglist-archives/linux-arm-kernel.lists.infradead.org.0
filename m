Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ECC9AB9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qbaXycfWVqw0tPEa7B+CbCnbIwLDGSRkmsEoVoCUC8=; b=CGT5KSndcbFASm
	1okymuVKUvz1ixglqP1NjNP0NRtvcnnIUfRBXuAkOoxDTlcjTfLx82Cn+idTzdjtkOQIyXSyKA9Hp
	rG975vHiumDeJ/iV2Q5dWmPIo6RpHZCWek50+MUKfKDPSDxhV+Rvsy7BoPtpvCpHhIrVPCDlaCwcf
	gqhM2v4XTjh9qtOqU7IclEK35NoLgDP4dOYo7w7yoFF3cXl/U2GvjW2Z1vhk4S2gO7G+rtDTppCcS
	AAMfzy4ZGYXp6vHBxXx4zfsxfTPOr9IhOwhMDKwfB+w0H2KjwPDKo6dvpsnKCJNNHeNGAJlM+NZ3Q
	xc1ghBVjC28xhOLXlCsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16CB-0007Dw-Rw; Fri, 23 Aug 2019 09:49:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16Br-0006ps-NP
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:49:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id l14so8271301ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZIj5J3GC6fJ/z8+TZRbG+UFUp/TNBUYk41ueKujFuvY=;
 b=rX/SkVUPR5Xkum4I8dMllwZbXC1J8GqzVGhKQLmtAJGWXvHSayB4J0ZHclIAfzhS/1
 f0SOPcPZRdLEPalAWtVSzoFv/JBIY5IrmsWallBDJse86OTX+RAC1RxImtwA9g/3FseR
 Ucf8GyfUKVXrrySMNJ0T1f6zafGxlaJ4ddQUtq+lpBQryywv+xWaFS68YCwCu4ptDgFu
 f+zVa5bWK7uS2ueRpQGIRJs1XiUs/ebTCCTf8W3YdbpnZU0ENFuBRkwenmakiWoj4mX5
 6mAZx1bSxP8v0O1GioXeSCbuTTjoJZU/vX8bEvt+corLyRnOVu7o9u61v6P3w6BxR1dP
 cjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZIj5J3GC6fJ/z8+TZRbG+UFUp/TNBUYk41ueKujFuvY=;
 b=bC/Fv92WT/VaXWGZHP4X9Oh1E4vwGORfy2DFj2+dYAeapHL/WUuSrT2tNVyIFhyTSr
 nEJAmcTqctNAAFAXFdXbCJkDL/8RCUNn3hJs90up+P1umswz9tN+kVWMnzm82AcGi7Sc
 155op23Hdgo7iXVo38bA9NvMEYotzOf96CIkt56DpGAcrhDm0Kp+gJM4Sz2co9kDLBD8
 rfydJmJXl7fdBmWPTyK95Fo2Kt/RNsAqQ0ZgmRWY6saboY0NOHnivSHsXSIpAyLVvUHZ
 AL3QbkNTln4opD7SYaix+J2hYKiMocCv5Vs3F3dSIAaMIFViWsMbZFG5kRUODybx/7Kq
 8ddg==
X-Gm-Message-State: APjAAAX1r6UabmqipEv+w/t4X49DNvX6Qx0jDeYI37VtA/1W7h1JWJTK
 t52LjzI/JRu0GDP2AtCLtKE5rGB9AYWOwvyCAMjfSw==
X-Google-Smtp-Source: APXvYqzzgizcf1hEzZp0DPeYQ5HNGJre4pFWBphhjTNGc0lG4u7yjHgyy1zrsnB2xD/LzIjtVs5fBSj61nDdBgIULiM=
X-Received: by 2002:a2e:9903:: with SMTP id v3mr2407466lji.37.1566553738017;
 Fri, 23 Aug 2019 02:48:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190815060718.3286-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190815060718.3286-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 11:48:46 +0200
Message-ID: <CACRpkdYsM=R5Du8bLCWxwxjQvVhH=hGAn7DwUMfdLk_3Ytg9wQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: meson: meson: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_024903_771735_8B96E4C5 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 8:07 AM Nishka Dasgupta
<nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Patch applied with Neil's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
