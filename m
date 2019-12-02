Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4421110E6B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm5+f3tCMnVYtHAwxgKWNXdV4RKH3ovVVyO9GUFsDSU=; b=BwC/ZLKOe/pSc4
	PxB1YVemxkjghuM1wSVBdqZ6p2Vv2g8dIlKPIR3oIYxRGn7oSmmpLleiy0/bR43fSRHtHSaXb0MaL
	0YkXDvHQYjBtCzpO9bya6tzQMKrRyltvYp0PZwIOFGBAtWilGZ6p0U9nGZuL5lrla8lga71aMhkjF
	VgfrVy5Pn6ChCPhJNzAejg6xgdQBXP/SktHSmr46ogtBdzL9PIIX2KzQ01u4WOpsTwcm8FgvAMZy2
	pTNtrhiUPSej1vwr4/epOsRvY0rhMzXxn29niTp1PjVuw5Wtq/7rMQIZZpAP3w5tKEjpjppbJNNE2
	oMiMqYamxwcKNs0pCUFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibgpE-0002CO-6o; Mon, 02 Dec 2019 08:12:56 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibgp5-0002Bl-Sx
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:12:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id l18so9148425lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 00:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RXvQHsZsmW6pXP8cWlKu2oB3ye6J64yetODPCUShQls=;
 b=LDvW5+gU93ELdFLgK+qT5nVScnz7JgrgQhRNku/wapYS8SJVJ0DJqOui367w/7mQxq
 Au7P5C7DLMSuDtkf/MWrkqjx3ggt2cjLRCY1veJ07zT9Q1Eu1LPn5x1JVqaSg1XnhMZM
 3wHW/8HPkLuPc9XfhNEKM5So4ssvUYGcLRkL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RXvQHsZsmW6pXP8cWlKu2oB3ye6J64yetODPCUShQls=;
 b=sCDPjCpYHOV/6sBVuu08AKvGUAQYfYY8ib4ys5W+vgLxNkerwhQ9pxbPAFXKB51lmD
 bkLk8z02u0aNn1uMLoUX0pzIiRxdJRp6UpO90YnRcCXY2jVfD4cRPJiQhyfzmMXnxBZS
 k4AAj7jXCb7ndU385XIYQKVT89EzVHJ8zMz9hRoVBw1iIm3x8uy32k1Oy+1icxHGKGyq
 T2gaa2P4fM2eyIoIV/3GZDaexoImNvvFa3bG8Nh1tn0Tuv6i1HKP3StjdUBvQBZo69r5
 3mXpTI6yrf7lcZJIt/dvCXYwpptNZu2V5K94JdCSpIt0YwVWg2cCZlK8M3rTB9zUoN63
 JNxw==
X-Gm-Message-State: APjAAAVwRYQ3NWnUvUVKLu2vTGOZ9tQbASkRoO7R+iQNytnog7HItHWq
 FnqZdJ5k+zlkvz8lo8uvG6EkPg==
X-Google-Smtp-Source: APXvYqwlkkFrnJatLGMhg+Y85fDnQNQBGUSaNwCgj8pT5xNS23TPmswcOte86uiWZSUfoOuJ8nIa5g==
X-Received: by 2002:ac2:4c82:: with SMTP id d2mr29043163lfl.62.1575274363744; 
 Mon, 02 Dec 2019 00:12:43 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id t6sm5445106lji.17.2019.12.02.00.12.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Dec 2019 00:12:42 -0800 (PST)
Subject: Re: [PATCH v6 00/49] QUICC Engine support on ARM, ARM64, PPC64
To: Timur Tabi <timur@kernel.org>, Qiang Zhao <qiang.zhao@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Christophe Leroy <christophe.leroy@c-s.fr>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
 <7beef282-1dd8-7c7a-4f6d-d0605d11eab5@kernel.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <fb810251-f444-bd5d-54e3-774d2e1ccdb9@rasmusvillemoes.dk>
Date: Mon, 2 Dec 2019 09:12:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7beef282-1dd8-7c7a-4f6d-d0605d11eab5@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_001248_085162_666593B7 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/12/2019 17.10, Timur Tabi wrote:
> On 11/28/19 8:55 AM, Rasmus Villemoes wrote:
>> There have been several attempts in the past few years to allow
>> building the QUICC engine drivers for platforms other than PPC32. This
>> is yet another attempt.
>>
>> v5 can be found
>> here:https://lore.kernel.org/lkml/20191118112324.22725-1-linux@rasmusvillemoes.dk/
>>
> 
> If it helps:
> 
> Entire series:
> Acked-by: Timur Tabi <timur@kernel.org>

Thanks. I'll leave it to Li Yang whether to apply that - they already
all (except for the last-minute build fix) have your R-b.

Li Yang, any chance you could pick up these patches so they have plenty
of time in -next until 5.6?

Thanks,
Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
