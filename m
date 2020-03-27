Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEDB1956E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXg33tlGh6jfoAYBiOK7SxstLZp6NLd8rctKx/3WOXU=; b=Bro1KK4OQB1pFX
	XMkdukbCmCl8EqRUEMVb/IMDTjvxyJa9/JrilGN6/RUIyiMmLxlkSsw/wCXvZzTSA5witeKL9VR4M
	lkdBChTxqLgq8LHhR0HhpM8smd8s8H3UQXwRlBCCC9zK6ChMX/6oPhp/ZUqDDiiJY5mrWFFrTZb+B
	Q6PGgmxcOGuP9gW+il4fEtLIXdZC1aLGUF3EQkzMer7vKCnQjTnmjNsVFAMMenWcbBTl760PIS3Kb
	1wazohp8BqhDO5xe92Gg6QtK5UgmWQL081DR2WMM2fcibxOJ3ZJ02SQWYNNTe6V6R3r1Z8GwWwh9B
	h0/wYQZrK01fSHXYuJnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnr9-0003ND-Sv; Fri, 27 Mar 2020 12:12:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnqz-0003Ls-V2; Fri, 27 Mar 2020 12:12:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so11136461wrs.3;
 Fri, 27 Mar 2020 05:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CUiNH0fTVA8sWzw/AYTfBd2HLFCeSkZT6ClcIL3H9v4=;
 b=V14ZuboKkD4qd4LaZyDPH1whtWYrtM2qRjYA79lluKWh36n85Y3yCGmU3K6leg3HqK
 wRIrvN6mWJUJt1SuBF7JfQcf+7/D7LLG8yqqY9zSpWiXJi/7QCnOBDZsctQT7GNQ0gnC
 QvGcW7Gpu1NtQi/RdTOJplVe/Mvq3jWvuabIx3HNHF3r+B0bIpPfsQSr6Hww3CaYwbsH
 dQc05E2NhX6v80eqy8MrbfDhulQeOUdWve0S+NdS89UxGaeJ7ix8748edhjchSSxck/3
 3WpeK2CUVfX9h978rh00KOTPj087GtYs15st0MJGHFzaWdMh9TtK0+tcF1I6Hs5ZDq4Z
 yGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CUiNH0fTVA8sWzw/AYTfBd2HLFCeSkZT6ClcIL3H9v4=;
 b=S6p2yR5BQ/NC5FLnCsk2N+LUfZqKIuuduszMuuIVoJq7m7EFsL5wrDzkJRPGJtFYcD
 ZYznIHMqyebzSpMeng1WfpRVR6++0b0/vq4+UitWs4nM2iMy3HC8AoJ5ETrSBt9juPcm
 ra+/yNZq8VCSVU7JuNS/YObLzZKRO+t/ddHslvGlhA1SZGy2VV6B4/TkknQB/0Pzpt/B
 Szg4lR+m6BBjE0iUC33yjw9bH78ERbldwhhiz8Hn1W4IhjxfpdIE38Qry1nZ49gDObnP
 +JLm1Guzr2UsRntz3zVRZrDi/olF/6rgk44MgZhEmmc0vmlkNXy3BWv6RnnVdyg829eH
 j5IQ==
X-Gm-Message-State: ANhLgQ0MTBP5HAnLfYTOKTbR02yRs7BUQ735PvTGNGwtUN2JoSpBiGAG
 CPaNdt0sZ10rQYIWLRC5R3Y=
X-Google-Smtp-Source: ADFU+vuJ9aerEJXEOaiSabitWRVaw7hwPu0xTEw3lR3e7uubpKeFlViKg9fc57GyA0az1mygc1NgPw==
X-Received: by 2002:adf:a457:: with SMTP id e23mr14895961wra.21.1585311168560; 
 Fri, 27 Mar 2020 05:12:48 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a14sm7984275wmj.6.2020.03.27.05.12.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Mar 2020 05:12:47 -0700 (PDT)
To: wens@kernel.org
References: <20200327030414.5903-3-wens@kernel.org>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: rk3328: Replace RK805 PMIC node
 name with "pmic"
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <8bfb3237-4bd3-8452-1860-ac05f3a23503@gmail.com>
Date: Fri, 27 Mar 2020 13:12:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200327030414.5903-3-wens@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_051249_996768_14536240 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chen-Yu Tsai,

The Documentation/ portion of the patch should come in the series before
the code implementing the binding.

If you like, could you convert the binding as well and fix the example?

Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt

> Example:
> --------
> rk805: rk805@18 {
> 	compatible = "rockchip,rk805";


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
