Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE71F3EA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2Tt5DwY/E00d7jI9/4wwORWo6D/E7wb3tZ6KCz+i0k=; b=TerPwHvv617Rym
	KtjIlBl1vlggZ84jM9IHU/cyOl1z7WBmSmqeYzPenNz7XhFI9jFN1kD8HtCM8yS+HHMW37NTCzbWD
	KhZN7BdqN94xXl957tcyBO4V56kZkK8VnjkJbX27VL2QPFpGG01ndINRU41Mn7R6BRnTV03qII+Qu
	oBl8vD28o2sK/mqTrWIy/+pmz9KsOfqjyxbIS5hUOrxtq6XSMJCZwaWr2fwAitNfDUQveqkqiUoem
	ywbwk3QuipG4/HyjHQiVzcGMBUPnOTfyKDguthD64n1ZzDa/gv4VRnkrCBOMwB2QSc+Q22SogyBPi
	LiJSr/+LOhqA9Ca9Rzcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifeC-0004IF-0P; Tue, 09 Jun 2020 14:54:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jife2-0004GZ-63
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:54:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id p5so21644913wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 07:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=gejxJi50IAlBWLUl0QwogqgVYpxXpSQbraYHpVsLRqw=;
 b=NiEZq/ukPyXU22K7LVp0m+r0RSMtNOwTqKt6aP1iSq0smXw4wcda1UFih4tdLiJpOV
 njmkzC6jYqVbBJcMmPlUuYcjd4O1KZtnUYl3FTNu3b0H5sEJzXEF8hkH0aH+CxMFaXTF
 m0iEsiqvFbVJ8Cav0uoTsbAk1t062PDuF37egpU9e6kx4QM4qF71J4wfHXC6G1ROxxRY
 JMs5QOxV4WFTAtQiEra3rsosSlJqi2YwDqpgjga+JgAKlk5SFrztqT2zf6hhcMMJ/o9W
 /99JDMGh3FZ/6WjPNINfrDjPPyvsEocvbA7qE1JmjjQz6h3l0iJp3NLXfrP9gD134TtP
 tpvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=gejxJi50IAlBWLUl0QwogqgVYpxXpSQbraYHpVsLRqw=;
 b=NQB5QRPi/87eAO0SFstiYqFJOBJSL1XC/ASeqacRzKGtZdQ//heIyIeJmGscMYhtYj
 D3qs946KErAIEP0iRlhmvquxhAbLjPK+PC5O4y255ySVpzs3L1BAZn0c+bEgCiSsWgHy
 IRk6gTJnMFof7NaYtT07zUAtnZHLiaKBfd6sPGfoIurxE5ge2bPFo9heXucXQnbiknYD
 S1kbzfL98j7njuzn5NukUiDjTd4WrIJtxPwwQeOcoVUrgZL5QLiNbn+oqmTxfyS9MIej
 h7TkRdXe2Gkf4D7hBDwTuZOfwk6hedHMsaf1LsXZr9P3FZ1KB4tvbQCA3yW/1+/aBGf7
 2ewA==
X-Gm-Message-State: AOAM530txBQEcIkGQkC9tr7RczVRELl11tRnndzMyd8YJRcB8MiVQbNm
 eplAzQNUA3SFDCn1oRd+82jHCg==
X-Google-Smtp-Source: ABdhPJx0g0ITtVIgCVlfIpmzgRxBsMtKoHziqrcBUDg+BtiyrsHIhGb+DPpRsoxOg3ZMlcgjF7+SZw==
X-Received: by 2002:adf:9481:: with SMTP id 1mr4875326wrr.396.1591714463791;
 Tue, 09 Jun 2020 07:54:23 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id f185sm3241153wmf.43.2020.06.09.07.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 07:54:23 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, ulf.hansson@linaro.org
Subject: Re: [PATCH] mmc: meson-gx: limit segments to 1 when dram-access-quirk
 is needed
In-Reply-To: <20200608084458.32014-1-narmstrong@baylibre.com>
References: <20200608084458.32014-1-narmstrong@baylibre.com>
Date: Tue, 09 Jun 2020 07:54:20 -0700
Message-ID: <7hmu5cguhv.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_075430_228933_BCEBFF55 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Art Nikpal <art@khadas.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The actual max_segs computation leads to failure while using the broadcom
> sdio brcmfmac/bcmsdh driver, since the driver tries to make usage of scatter
> gather.
>
> But with the dram-access-quirk we use a 1,5K SRAM bounce buffer, and the
> max_segs current value of 3 leads to max transfers to 4,5k, which doesn't work.
>
> This patch sets max_segs to 1 to better describe the hardware limitation,
> and fix the SDIO functionnality with the brcmfmac/bcmsdh driver on Amlogic
> G12A/G12B SoCs on boards like SEI510 or Khadas VIM3.
>
> Reported-by: Art Nikpal <art@khadas.com>
> Reported-by: Christian Hewitt <christianshewitt@gmail.com>
> Fixes: acdc8e71d9bb ("mmc: meson-gx: add dram-access-quirk")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
