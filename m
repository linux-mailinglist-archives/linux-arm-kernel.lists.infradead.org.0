Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21D4D1BAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 00:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eez+t9+V9BlWReopj3jBE2d1ujC1A2/JRtsAQrvGPzM=; b=ehLwpCeMDQss2f
	6f2Fw6gHW3tSI9/PK2DByzJycGFjWHk9RXMz95/URoM5l9KSq7ZMIVWgbF87qc0CgPeGvWf0wk4yO
	yUeNqq50wAkTHlRf14RGUb8v6ioUn0oxw0eyJgmjaOcdAdHj8YEmjFiUFukkdk2kZDY68zB5YE5U0
	WViPv1Z9De5f7Gr3TrIRAxQGWEJ/p2vqzlQ//Q65lEfktthdXWb/Fw65r2p1YYyJD4yBHNsRRh3J3
	CURC9SGA5QUFIlbKawtfPTBEdievCaHQBK6BBibpopf6NUNxBBf6EdyfNtAwAFdBzk2rKtdfIlBZ6
	j19PO4vCeZ267IpVwJPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKPp-0003Ek-VV; Wed, 09 Oct 2019 22:26:42 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKPi-0003EC-74
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 22:26:35 +0000
Received: by mail-qt1-x842.google.com with SMTP id l51so5535769qtc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 15:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=CiNtf9aBIrrX5eeY+lWUtp3cirNfSmpXQ9FltiktAv8=;
 b=FifhUGIjpae34or/omxVvVhF4rTt/qglBiIOmZrJKECnjR1gVHZsl8LD6YgHFKTCXk
 hCZnog3cO2un3XkGVataAVPc30evbmMui325U5Rp6eS6XapsDteXGLN6FhKqGctsV2ao
 Mx5Ef0I0DwwIRgRslVWXqZydwnLF4QJibAxyqWnlvJgXenZgySzhiKYKJ2uae0g4NoWq
 alJLKjeJwSPpS3TJfgbwb9lEEdUq51XdBXR6eLtEthEIroRTCUZMZeqzJ967zjwYCcUi
 FBTwZhcbcy1YP3GF59x/oZdm0LstQNmyJKF1+4jueJ4vBmMxQkuLHpXREbEd1e/VGs0B
 wX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=CiNtf9aBIrrX5eeY+lWUtp3cirNfSmpXQ9FltiktAv8=;
 b=dsf3d8r17hujZH8dzibQmKxjzngIycMk4rnmUrEOgToccI+LU8nnZ4BjggTUC7J5jx
 Qzn+Egoeho46/hdpakHcuJfdRdh3qvMjDlRskLCK0sFc+HevkLFLP0jyG04mdS/XU4RF
 G/g/J2EBN+kg3vY9ZJv5EMKrFjKF44R/jG1ZOtOKzEYQp6hrqRHJW5fH0hJQqxjMw8k4
 JNtftAeoIV6IXlp4TbQ/7Wj/Vf7MLhj+ZlVbMiUgOM3uoN87mxvapU1dBQHIsr6VIKbh
 IHUN+PthYHoJgeDxwHa9mT53/M2a3Nt3SQMsa2uuMHiNfP376K7mAi4rgVhYO96id7nh
 4R0Q==
X-Gm-Message-State: APjAAAXwqtyCMkB0WsRC/At/CiwnWJe2sfFzA1uuqZYR/Mk9h7k82tsS
 dAXqwc/+GDdxF01mgiCwmW2uiw==
X-Google-Smtp-Source: APXvYqy0slX/EioTfIAvk6LMnCaI+bB5mkLKuNgrupgqFoZCuC6hMmDIMoLJbc3HFKkDgCKbzceKzA==
X-Received: by 2002:a05:6214:1264:: with SMTP id
 r4mr6460857qvv.64.1570659993075; 
 Wed, 09 Oct 2019 15:26:33 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id k54sm2393829qtf.28.2019.10.09.15.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 15:26:32 -0700 (PDT)
Date: Wed, 9 Oct 2019 15:26:18 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Antonio Borneo <antonio.borneo@st.com>
Subject: Re: [PATCH] net: stmmac: add flexible PPS to dwmac 4.10a
Message-ID: <20191009152618.33b45c2d@cakuba.netronome.com>
In-Reply-To: <20191007154306.95827-5-antonio.borneo@st.com>
References: <20191007154306.95827-1-antonio.borneo@st.com>
 <20191007154306.95827-5-antonio.borneo@st.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_152634_261658_6591A6FF 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 17:43:06 +0200, Antonio Borneo wrote:
> All the registers and the functionalities used in the callback
> dwmac5_flex_pps_config() are common between dwmac 4.10a [1] and
> 5.00a [2].
> 
> Reuse the same callback for dwmac 4.10a too.
> 
> Tested on STM32MP15x, based on dwmac 4.10a.
> 
> [1] DWC Ethernet QoS Databook 4.10a October 2014
> [2] DWC Ethernet QoS Databook 5.00a September 2017
> 
> Signed-off-by: Antonio Borneo <antonio.borneo@st.com>

Applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
