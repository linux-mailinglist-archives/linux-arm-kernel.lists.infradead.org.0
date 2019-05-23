Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A626827314
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5dRdt3OnqK3OBwdJA1E9ajAxyHco71Xw+eLBv9rK3fE=; b=ah72z8VcrroI0EAben2dLQg7I
	X+siKt6sK8iRQg1mfsLTfJW1l7h8nVschMYPJT+0974zKy9TCuox0Faxi7MrXSeaO45WGN9hpa3pE
	4ZvXuEb+8tZXhc659u26rcf39jLIXh0d1XxDVm2/B823oeNnxCGEehdS8XYZX4dMVDYMkzn6k6QnG
	ngwrr17MppohLpHFZZ7kk4d/3zmWGbVNp2hiw9cudOqje3aZmtHIWeY9dRhnCfRyjgPG3v1fEcHsp
	RQH1x6wDLHah6DPvjINC3amnU5Dy6sBxr00/h7bf1NU51o0OBgGPLPpr4Sy0zyYUsKcES4HxBMv6q
	jE4YTE7+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTbA2-0007uF-V8; Thu, 23 May 2019 00:00:42 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTb9s-0007rP-68; Thu, 23 May 2019 00:00:35 +0000
Received: by mail-qt1-x843.google.com with SMTP id a17so4686702qth.3;
 Wed, 22 May 2019 17:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D32ZOKFRLW3jAQLYe8MxTrM9BtRmyZsAFpuUM0kn1Ds=;
 b=JS8A+Bj/AWAzLMo3ePM3T1UaSpb1eFU4LIWakq8i+KUmlgr835lr1xpsWj2Uj7x2MB
 PqJJTfd06T/sk14XCzrScM5CEvQU5Jq9efppNRs1FFYUgGDSUh1OXcZpYJy7IlH+PKQh
 q5kvokXUAgCQNYrPmGygRhBdWXPdihNDXxR42nnHvt0juMn7iLRbRnTC38Lo12QwanDg
 3sN0VNr0XKwBQQKqe99tYKMVRYqbqdTcOdMsRNCBntYbbsAU/4NSEIXE4FhWv5d5gxQq
 lqFruq00bv9lW3y7lxOSisbTemJ0JgQqHAlySmn5jF/k93YXIpKDV5et1tSARvTIY1n8
 Lstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D32ZOKFRLW3jAQLYe8MxTrM9BtRmyZsAFpuUM0kn1Ds=;
 b=MJ1wDJDC2zMU4IGqgmKbxOaXpWpxAcr9yYzAXvGwP1QkPzp6+KazNgMyj4JFhuZj2H
 WOspSYbDVoI4XVE2nsustdHT6sKdcgPLkBvT5LNlKbMRZPE3RMvHma7l7UzQNCyAYQMT
 Onb2NSM6MDZraDfT/y3uAqelGUjNW8y6pff0f60AjNqU75VjAAymBcoKeeykrPDQVmlC
 vLDaUa/2Wl2ZGsqFMjCfTNn6ls81fxXjbt8zhG+zMcf3rpeQsTFH0gO3WVLgRCBuDPih
 NrUvfKBWhKOmoiVmxt2tzdYmWUuudmewOGjfuQzz+bqJ0pZArWnrAkm4iE7YI6ZHV0tb
 kBzQ==
X-Gm-Message-State: APjAAAWLniQWGSDTbEarP8+da9PthQT1/r9BmsPET4u2euqqLxI9Uq9I
 ZsFOZEhZ0hs4HrFVUpCz4U9CWngjnR0=
X-Google-Smtp-Source: APXvYqwCoN7DDPqrWOVld8/7JP9cFARTCBUDwI2ne42/vUAqE2OwpkZjxFm9lOvdj0+yKh06/hUEpw==
X-Received: by 2002:ac8:32d1:: with SMTP id a17mr12803234qtb.111.1558569628805; 
 Wed, 22 May 2019 17:00:28 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:74b5:9fcf:6f1f:201d?
 ([2601:153:900:ebb:74b5:9fcf:6f1f:201d])
 by smtp.gmail.com with ESMTPSA id c32sm17735525qte.2.2019.05.22.17.00.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 17:00:28 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: set TX PBL for rk3328-roc-cc gmac
To: "Leonidas P. Papadakos" <papadakospan@gmail.com>
References: <20190417210059.26262-1-papadakospan@gmail.com>
 <8865b046-fb3a-4071-335c-66abb344d7f4@gmail.com>
 <1555915435.1262.1@gmail.com>
 <9a5c62b4-ea75-de4f-9b71-ffa42cb8eaac@gmail.com>
 <1555938803.1241.1@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Message-ID: <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com>
Date: Wed, 22 May 2019 20:00:27 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1555938803.1241.1@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_170032_253657_5A853E2C 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/22/2019 9:13 AM, Leonidas P. Papadakos wrote:
> 
> Indeed, at least with that first patch users won't have a crappy 
> experience by default (ssh lags and the like)
> 
> 

I apologize for taking so long at this, but I wanted to make sure I had 
it right.

So far I've found a few things that seem to help, and would like y'all 
to test them when you get the chance.

Adding snps,aal (configures DMA for address alignment) appears to make a 
massive improvement to stability, although the the snps,txpbl = <0x4> is 
still necessary for this to work.

Second, I added snps,rxpbl = <0x4> as well, which seems to help with my 
RX issues a bit.
The biggest improvement with these two settings is more stable transmit 
and receive.
Currently I'm getting about 800mbps on tx and 400 mbps on rx.

Please test when you get the chance and provide feedback.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
