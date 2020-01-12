Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D956138822
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 21:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lehh7SNe6AVodDbsfSVf1APQ3FaGC5YsXa/Vcgakt0=; b=J3N9woNP0fE7TJ
	gFykp/FTN6JA3aRX6VYsRo6Nrs+x3TWSs8ZSUTRJv2RYIHzwCZypAM86SrGn9+fj8uyM4J4rqlFNL
	Sveo+C2uatGbDz7i6mAU93Be3cuXDcnp2Myl/9VzQCgReC3DAMlON7OAhAGV6a9JVK17NXP2sPfcp
	8PSAzGSTGOpzme832A68G98hl/tihbD9ucBCavqRXKijJnM7h1W29sdyytlE3mfQ+i+zSa/tHS1tt
	RJvCNcWWe4ZjIkjpDLqeLVZdTtotb9tjk9urV2iWJOtAq6DGZMi1HVAQZ9oaojhIOleByULOSO4uc
	ayMok10ss/pS31Fq44GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjQo-00048a-Sq; Sun, 12 Jan 2020 20:01:54 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjQe-00046q-5K
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 20:01:48 +0000
Received: by mail-il1-x144.google.com with SMTP id g12so6149729ild.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 12:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vltSl3yoS/o4Pj3eivfuysNtj4INdjuW6Z4PNbKDFMw=;
 b=kVUKzsKNr/UN1LgzbrH3VmkkKF/GgSjl47zvtaJVSsJ4ANthVbnW21/egA78M/fnrl
 IfpicMsnXfcbxwEqpieyIAu8rZRsUkSQRo/OPoNmBXJgds0yfPDiduhz+VPWjSk+tw4S
 dYJ4Iug6HP0lwCjKdXgp0ltM2EaGfFIhJlSMu3sjA13JJMNDfovRQT0axtVMsKmy7QeG
 97lJNUoTmoQFhyrPZb5ZJHgZF4Tw67Kd0VGatq8d7xoZCL9rnyXYoLYrTLM+LRVDbrrn
 BI7LN23YdH7gkAhLbb4SXaSD+V+WoL4rQIyWhZfvMuQ14H4G79pr3EyrPWvHL2bNFpYt
 r1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vltSl3yoS/o4Pj3eivfuysNtj4INdjuW6Z4PNbKDFMw=;
 b=Ib5gBx/QYBkrs7tTWXhuqaChVflfOmCjXtU9qQ/KF27kAhsV7C0L6FwAty2K7TPkR9
 oD0T7xPcRZ337FQO9uGlcae/BEUoCZnH4JjrlONhQJYqzyKhnq+BKyYapu2xBSLa4ccb
 sj1t59qkypbzYi16NyzK+ncE1yKJPwyeNCQrt9U5TNFHAgWvDhSXea4FmrCdKCqdk657
 qG5j4rarLAiwpfwBX+nFTTZzet3869UXj/LQ44gnIrmUDTw8MMlQPgSc3rCxXLr2AlRh
 n4knbSj85LAesQzIJKFUhUm7QsJzsjv1v16EflMqRZWnFX0nNAXxyYQQOvQQ0pCBwTD4
 5/Hw==
X-Gm-Message-State: APjAAAVSmzr2aXtzbog13U9e6uSQYEOzq/5+ny3oHLQP0QPA9K+QMo5i
 njhyNxG6rfRCZyyd+5qr2WGKpd3Eq9TucjhyF082uw==
X-Google-Smtp-Source: APXvYqxhD0AB5i0ZIFt3OAw1DMt1N8WD3Cw6RX5iRKqkktFYUteW/DA4rDMoJZRrtrEqDiSmAxbWzcBPtQpncRxq5eM=
X-Received: by 2002:a92:afc5:: with SMTP id v66mr11073775ill.123.1578859303168; 
 Sun, 12 Jan 2020 12:01:43 -0800 (PST)
MIME-Version: 1.0
References: <20200113065622.15eb3c87@canb.auug.org.au>
In-Reply-To: <20200113065622.15eb3c87@canb.auug.org.au>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 12 Jan 2020 12:01:32 -0800
Message-ID: <CAOesGMjZQTjos9fU52zsrKFZj9LVE3oUXQFpjJov3-dBD0cT+w@mail.gmail.com>
Subject: Re: linux-next: Fixes tag needs some work in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_120147_287170_8C94E600 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephen,

On Sun, Jan 12, 2020 at 11:56 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> n commit
>
>   0ff15a86d0c5 ("ARM: dts: stm32: Add power-supply for DSI panel on stm32f469-disco")
>
> Fixes tag
>
>   Fixes: 18c8866266 ("ARM: dts: stm32: Add display support on stm32f469-disco")
>
> has these problem(s):
>
>   - SHA1 should be at least 12 digits long
>     Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
>     or later) just making sure it is not set (or set to "auto").
>
> Also, please keep the commit message tags together.

Thanks for the report, we'll keep an eye out for these formatting
tweaks in the future.

Alexandre; no respin needed to fix this IMHO, just something to keep in mind.

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
