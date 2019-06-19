Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F220F4BA35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VpIhk+y50pYyMHPpRu9zyx/dpInQWRat3bNdvaHU14=; b=mtp7/PKYd1I+F0
	3zjPQgGqpKZcHRa8N7IUJj2ECb9yTNhqqMgrgPb6A0QztvRxLzEc20aZQ/NnLZgtDGgO1iuRciRzk
	llyql+YFzeMfAi+BHJetwTycCkK744e9Aykhmq4E12WYUmOKvmoqt5wYLAw3ccGa+iz+q7uK3I+Ui
	agZ1wOgwj8DArc+cLRc9HS7HwT4JVy0nfJ6jI/TomAowq7C5t/P2krACCbzJLKgcTn0MI4ebh/9WV
	QzRfJWWAlMzmoyG86REOBN/lywr6Vj+UaBPtMcoEUObxa7CgLFM3kIBVYlaSs/cHC0pPUJOoxPNH/
	9lcmLClxmG7Q/wspE8JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaoQ-0007h1-Ew; Wed, 19 Jun 2019 13:39:42 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdano-0007Rp-JN
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so12143736lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QKggU93Ov3OGvJTHnvBvpp3+c/GovGceSumOJbG5Kag=;
 b=g90t1pfGMsBwZkO7WMEchWQcZ+/SFokkE8pEWUuLCb4C3gYFVxXCamqCaOHb0oU86f
 hKn1mrowaUHFrQhDAjQgFXxbg41JHSzq1WOEiWnerS2ucghntb6bKh1mc/92iTFACbbV
 ir2tYsqSxKSCptkKdrbEiwPCf9vRVMh1WzcZoJzreE9lvPIWSArEMNbxvXH55EY0eHMJ
 VCWVsBapJ5f1S4WGzeGFZvGIZYVs77NHAMs9895hD1WvrARdnQgxMzX8XwB7QkNTXyNw
 TOcsiylUCckRO1mfm2IvdhpoopFTotV8sg8FNECsAi3P4PrzuPz1rGptQlH9L7wHUg96
 QsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QKggU93Ov3OGvJTHnvBvpp3+c/GovGceSumOJbG5Kag=;
 b=TEs2Ykpt80sGHJpHI9Vs7DHd0qhV6r0VpRFVARp6n94ADYb+MmiCqC0vdbNUTLrdql
 msIPnWJd/9QffoJbszLJlj6aBY4qfJBqOawAAECSSjoe+tXZedEeIkF+HKnRcQs1e2fE
 BIxCsSw+xpO6IRdH48+NWFtv2t9zKNHWARzO1o17WCjT58LJ2xyb53v06o5r6PLrA/6l
 IuQYtI8u336VnoWaKIdBSJg+reYsz1uYfR5XNIgITCHPKBnjgijWCIWPoS1iZ31o5LBX
 zroi46VhpPsfigT8dAZygQwuSEx+XKSTGFBIuAOiLmB+1tru5kvZPnhcdIPfz6TGyuu4
 V82w==
X-Gm-Message-State: APjAAAWu6yStGcKawQNkEhW2aLr3oYkc4rVLAepH5+7W8jFsxOjUqsEE
 kqHZUZVPd5V6p3rD4mxTkKE2EA==
X-Google-Smtp-Source: APXvYqzy1/85AoVZe5aXzHxGKPGMI3YKh1i1xTNcGjAlPkxkPNjoWmNiF/UkKqbk9mR2Jw4m3oq8iA==
X-Received: by 2002:a19:9156:: with SMTP id y22mr16577964lfj.43.1560951542029; 
 Wed, 19 Jun 2019 06:39:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c15sm3082664lja.79.2019.06.19.06.39.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:00 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:16:59 -0700
From: Olof Johansson <olof@lixom.net>
To: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH v2 9/9] arm64: dts: sprd: Add Spreadtrum SD host
 controller support
Message-ID: <20190619131659.vjw5kgepe6pz5inz@localhost>
References: <cover.1559635435.git.baolin.wang@linaro.org>
 <3ca273e341f2f5f66b121d411428c60afd412586.1559635435.git.baolin.wang@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ca273e341f2f5f66b121d411428c60afd412586.1559635435.git.baolin.wang@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063904_633765_FA12D889 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 arm@kernel.org, arnd@arndb.de, zhang.lyra@gmail.com, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 04:14:29PM +0800, Baolin Wang wrote:
> Add one Spreadtrum SD host controller to support eMMC card for Spreadtrum
> SC9860 platform.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
