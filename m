Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882CC1F3ABA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:In-Reply-To:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=IsQQlJB8G43J4vLAMPxoMnwFNBTCgAPV2cjpdiDyh5k=; b=HyPvf3bx/sTWD8Rr/EekcbCyO
	tcQKRU9jKKTd7Iu1+hz3PkXmHXFn1mHh7jzZE/vlVn/5bISrj9kTevWkshY7tnXDOEsEPatgwbMKF
	hHoVs91LxWfJfjwcj5J+3dXb1hrEkByx+iN88mP/WaVnUjujLKXpD698cK2BhQGCGu81+tJn6817I
	F7hu5XKseqS4ldtLZNhYK96IcPvXuAFYO5arTtZdwaoJzqo5fNcdlqblrPxdl99VkDaRmPB1C9Lq8
	3rlp+PBIMhnoOyLUd5NlEHnD4ui3+aDn8hmW+nAhYTI3DQY6AxcsOQhQW0shJw+1mj+ZgmmxhvXGf
	aqUk7jRsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidTO-0003Gm-1H; Tue, 09 Jun 2020 12:35:22 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jidTG-0003GF-1F
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:35:15 +0000
Received: by mail-qt1-x843.google.com with SMTP id z1so17415252qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 05:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marek-ca.20150623.gappssmtp.com; s=20150623;
 h=to:from:in-reply-to:cc:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=MeSGjtf7ae/7P3bfWyApibNOTiaNr3viHuFx36eHAB8=;
 b=imwqMnsvria0XrGAIKQsk0Jz7LxxxsMtXDBQQRKdRz/zTJfR0C2SqLWVTrMv9CbcH2
 IvPvgD35f24gPdtqoWNmel0vy8rOv28sKNgNa3U8Q2Bb3do9NkajPgy5cCygT7Uz8bcI
 FEjTjq7MJSdGu/QJUksMxYwMdC6NQFCEx/8XaY1tuNqh8tNW5H98CHZhAH7VGisYUTEJ
 ebnF7y4NOUWNKUdW/qHjVgNwbnZsgHzqYozqytqeFnujKgy4iQbUyx65Tsj0mt4186S5
 9m07MCZmx8i3+orl8xQx/H80WFojTsT3zZ0aDx7jsyaSndAtVLqiQ61ExhGewDLoQmO9
 sHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:in-reply-to:cc:subject:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=MeSGjtf7ae/7P3bfWyApibNOTiaNr3viHuFx36eHAB8=;
 b=sYnkjh/kTPSPzYQIc5HGKFfGTiZM5h4UwERAYEN309wgZ4brAzxj/IZgSXC1wO5Ynq
 9QoFecS0iLfvP84Khori00CVG/u+5GyP4836OKDMgVbdHJkHv5CVfDJydzh/I+ryhK2c
 LbO34+bNdzF5HzKqmTDpQE09kY+DaY7wyHcAR+ROp4QC53TJhpfYShAhBejR3n29LYHO
 MWe1RXEZfdirilMOt1fnwZxJHMVXh806dXFd5Bspfip2z97sGuS4I/nNuIMVe+UiiMYD
 WJ9ldl8ufS0A0rq1OLv72kPOLRZNkRP709fMcZiScU2gj95e6peP0yzfZ+aZnxl1UP79
 nByA==
X-Gm-Message-State: AOAM531hGl9v1g+EargnUM2W1gDYmtXMi6dVaS2M4yjdp3hqnkmZIRjc
 MF6cPM0j6K4hJ1hc4035cps/Xza07rM=
X-Google-Smtp-Source: ABdhPJwyDe0qh5vy4c4qxEgkzx6WIoDTfeC/u0w+hpA5WWimPthJirlkec24NyewhLYvDNHGNE4YBQ==
X-Received: by 2002:ac8:4b79:: with SMTP id g25mr28963542qts.29.1591706112265; 
 Tue, 09 Jun 2020 05:35:12 -0700 (PDT)
Received: from [192.168.0.189] ([147.253.86.153])
 by smtp.gmail.com with ESMTPSA id m126sm8664050qke.99.2020.06.09.05.35.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 05:35:11 -0700 (PDT)
To: Ard Biesheuvel <ardb@kernel.org>
From: Jonathan Marek <jonathan@marek.ca>
In-Reply-To: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
Message-ID: <24c1529e-1c8e-6912-965a-f4b921e09d79@marek.ca>
Date: Tue, 9 Jun 2020 08:35:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_053514_145155_B13793C7 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just want to add that this patch also broke booting my arm64 kernel 
(CONFIG_RANDOMIZE_BASE=n). This is on a recent qualcomm board.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
