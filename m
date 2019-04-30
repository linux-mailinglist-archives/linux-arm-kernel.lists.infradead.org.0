Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD190FCFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6K8RL7mZKJU26BeqSj4N/epMgSKOQE5k21ScQZ6v60=; b=XIyAx+s5wIbBvr
	KZQ4V0PFL/J7cWWbjyCcfE1/YwBViI1JgODv+LuVp7dzvE44vik8xhfdAG/Sv3i8/2lzDpO4xAYR4
	SHZlPvXBISQwDbKVVxma6WrHNUuXe1qu6133kQzGt0pirKpDP4LBJNfS9CnQsqcoooa0D9Vkc9BiV
	g3NhwbC9wIa5t8PRnjYaPaTh3qAS4rZFtsOMEpzlpJW4YBxNPinC2/RdMK32EdSthepIzMcrvemc0
	+VsEqHTqVYDjChVt6je6PyOx+ymrdl0n4ReemfEYQgLjut5QwwxDY4Xh6+fr2uCmZb6/OqthzsLlj
	4+43hub2NsMPj24Y7Raw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUnD-0000yO-DQ; Tue, 30 Apr 2019 15:35:39 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUn6-0000xN-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:35:33 +0000
Received: by mail-lj1-x230.google.com with SMTP id b12so12041553lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 08:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dbHSEqNDiOxiHzZiYNZUUpwTRk0HKkvunAYxy9ES2/8=;
 b=rseMb/TMnUkjY/Q1nBBHmXfBRzen2JNFiVyu7sAXB7R7vj4iaHt6pQ+2mgJnacTZiL
 YeWYW6d7Ljw/fsDRz6vN0WECs6Z09eIpm3XY8u3otZz72BVIDCdvcIZl0NCiO5LmWcVz
 P0IW97FTbdE7o0QXblhwygTtnZ7/3ADIwx3RnHZEq9A1CEPbGQ6crn8qzoZSZ8+36Crt
 k7VBVljrq7PkGaYO6t8rHXiS+JHKPwqaKAt8FaljDfQCSf3RZqGvle/jSwe8oU0iEmt7
 3dfPOLHyu8gQpgNQ+HCwnpIlwsRUzkuZ9pBwUlUUuMekcDoAhQBszS5j4yu/JNA7GG80
 pJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dbHSEqNDiOxiHzZiYNZUUpwTRk0HKkvunAYxy9ES2/8=;
 b=lyGik63leDx+SRZkG3COoeFdqHQddRtTA6y7yja3kLunUbv4mWDA+gcGAZfsd3fvau
 OOY7B3z1V75rl2SBtxdZraDCHa5i2PSn6yX91dM+9cNXXA5tirxndvJtNBD3KIPBKRJV
 l4/ykKO1WpOZBPgjB8rgWM/T6mC/i8txHj+FOz71Uuf5r87xg3fWRyZvCTVxr+pwHkKx
 V3/+EUv13EDLSTg6H5X9f/mvQ6WJt9v2jUl8gqLRtQNThfmvul4GbEsmnTUb+9uEuM8i
 8GuATmjU9/wqQTj762+8ND4lhYLqwB7/V4bi59fbwuYY1yZ/5spE6iM8biCnR+wLRb9e
 Wr8Q==
X-Gm-Message-State: APjAAAU8Kd1cYP/x3y/pwUoHtnR1/KEsE8bh07xD51n917qHJyhUkTH0
 JPYPt9Frly9Qeymt+fosO3ylLzq6Bh5LiSlY/Brj7iNZI4Q=
X-Google-Smtp-Source: APXvYqy70rrpqiD3zNRcskZueJKPlnS7E1HY0wIxZYJ3X0k88dn9bOeW8SVy801mQKldub9s61qt4ukXhfh956Wk7ik=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr38837420ljj.54.1556638530065; 
 Tue, 30 Apr 2019 08:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <kcis.E7DDD7DFA27C49D7987A7EAB797CB891@DHPLMX01>
In-Reply-To: <kcis.E7DDD7DFA27C49D7987A7EAB797CB891@DHPLMX01>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Apr 2019 12:35:21 -0300
Message-ID: <CAOMZO5C=E461yvHJ1PS7JE_ivS1cn82SKT2vvFDOjHqUnZUqaQ@mail.gmail.com>
Subject: Re: cpu power up timing changes causes UART rx character loss on
 imx6ull
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_083532_148575_1A764147 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Tue, Apr 30, 2019 at 11:10 AM Christoph Niedermaier
<cniedermaier@dh-electronics.com> wrote:
>
> Hello,
>
> I have found out that the commit 1e434b703248 ("ARM: imx: update the cpu power up timing setting on i.mx6sx") causes UART rx character loss on imx6ull.
> The commit is designed for imx6sx, but it also changes the cpu power up timing of the imx6ull, because function imx6sx_cpuidle_init() is also used for imx6ull.
>
> After receiving of 32 characters correctly, the following characters 33-36 gets lost if there is no delay in the transmission.
> I connect the imx6ull with a native PC COM port.
>
> If I revert the commit I will receive all characters correctly.

Thanks for the report.

It seems we need to change sw2iso only for mx6sx and not for imx6ul.

Could you please test the following patch?
http://code.bulix.org/crpbf9-684699

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
