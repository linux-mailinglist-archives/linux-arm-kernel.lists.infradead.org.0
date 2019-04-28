Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3552AB6AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49HxDatBxfCA3nEwGPA/5gCAFM6WopFbbT5HQ5N6L44=; b=fcGGxwtANUfOxD
	9bwqYezLVUukmZt2VA7/bODgDECMHmNAsmzy5hWq9fxbr88kO47L8GaNhBQ4eOtM/AqE5hIotGTEo
	X78na1NHUcsDnOJBk+NlK1Durnslk15PbTE+TDzaaerS0ZPEx4N/iCHm/5BXkAUHQmb6Ps6bB3H5g
	U0lsBjcAoaevdDStUQu6VF1/0yoabzdzldUBqfDJAKbAb1tcX7gCygtVdMdvvMz7cyWt7Sp4zt91d
	13UI7OvzoD6/UU5zQ7naSEniA5OTZhncmyJGIQV2K4wdHFEdYqA1bbV0QOglZh/GLGS5KrsILi1RG
	f3jD2WGVJapTYcENJLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqSw-0004oQ-Mm; Sun, 28 Apr 2019 20:32:02 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqJ0-0002UK-DH
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:22:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id w23so6214141lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/BJ3B4uibiLnMzjFmWotADT5mXzlCaZzOXmB09q/qdg=;
 b=aYsjEklRsmrQqY5dBf2DhGVCqxAlbUXZMQkTC4ZwtJn9XFHmGfjFKBorYpT6bJKz4Y
 Wvmfl/y03m7SHwsHdkdPEVEbGq/QnlVbvZqUot2OlqFH4ofUaBkH5b1ws0cDf2b1CUiA
 s0UVYIZdYolJlSj5gnyNX/GzZtvlKi+TDsXYN8FuM2fJc1o9roRSVPFKn8X+cAbEH2PF
 PGmqCT0V/upco5T08E8IOKTuKtPKiNs+B4VglBH+SOt42qU4yoOK126kliC9j5rXU+Hu
 QOfYfAky+DIqsBJPj0P2wkdn8WhU5ALwy1HSPcQOcwuNFbyANDqBZFgVlcmLs5vzmHSn
 KB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/BJ3B4uibiLnMzjFmWotADT5mXzlCaZzOXmB09q/qdg=;
 b=ZkuWZ99r/uijF8UAL7J9kpMfUK79y/pBt+35OtEYqNJJVykEinzegjrav1dN4VJGHO
 2Qf4A7Hm1iqjUTmQ39FlhnMlg6GJRtpP/uuygWPDC2Vtpubk7Sqk23TPMqWlYWsXZ3+F
 AeApXR3XSGvTZl+ubE/Rj7ozVtxerM7pbApI+mx25Pg43dKlF2+tXkhkMByXTmrsFvF4
 8Al1h8UgbkS6sM/TCHVbmD05pGfmGEhO3k/ntWaV/8HYQS9KDux8gI3rHzehQ45D53Dn
 PtFV+5kwYgxbzFstARjetioYcB896w+AD7a6jZI/lpB/SGVrkEgBIH/LgFZmjkOTFdwr
 VeHA==
X-Gm-Message-State: APjAAAUkmgVhPu3xY4omU9X6elS79NYG5PculDWqGFKxiGIBwYGwGzRq
 PyeuXJXnlcZJDRSRwOLUlATiOA==
X-Google-Smtp-Source: APXvYqwek8zKBVho1470XXnlTIoOInFAKUYFELEu0q017/AD969W+RB4B9IqcneUdlBjF89veK5dIg==
X-Received: by 2002:ac2:4192:: with SMTP id z18mr28824574lfh.96.1556482904765; 
 Sun, 28 Apr 2019 13:21:44 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t8sm333827lfl.73.2019.04.28.13.21.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:43 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:01:37 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm Device Tree updates for 5.2 - Part 2
Message-ID: <20190428200137.tz4m53vlgciz56tt@localhost>
References: <1556252941-3865-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556252941-3865-1-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132146_800583_5292FB17 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 11:29:00PM -0500, Andy Gross wrote:
> The following changes since commit f3e35357cd460a8aeb48b8113dc4b761a7d5c828:
> 
>   ARM: dts: qcom: ipq4019: enlarge PCIe BAR range (2019-04-09 23:33:39 -0500)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-dts-for-5.2-1
> 
> for you to fetch changes up to 6969d1d9c61524d3ce492cfdca92d5dfa51e2e54:
> 
>   ARM: dts: qcom-apq8064: Set 'cxo_board' as ref clock of the DSI PHY (2019-04-25 23:22:26 -0500)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
