Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101DDD3226
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcFC2UJnNGAMpoGtJMjCIrJ0eAExPEOKhq7mp6kABg8=; b=qvmABf1ZGafR2E
	oL58CvbAsLqisNP9qkMEYfPSgWmgijvXF2ciR7jxiHj63upMtT5UN36K7mMIqgpTPq6TNNHWsyygA
	XnZ4+46bpiYgThNYQskG3bJWQ+x1Xgm9GCQkvGZaviX4quOHpwF9wex7Hnm6XGTiIJzFPgg+A0hTT
	Q/N/PaouXGwearISm8FWZNeUy6R9TUrzaMgarInzZCEO69ykc01pG5688gHUOS3V722JBFpDJpzEe
	g79YaXbazswU7FD8PU5eeSxS0C0FUUeHmCmAk4HmIZQNPcvqeXbAoX0lG0cxNHRvSI7yECEvmFJjl
	sHSW/r0HeTuMJvROf7oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf9d-0004nO-PU; Thu, 10 Oct 2019 20:35:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf9T-0004Hf-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:35:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id z19so16841451ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 13:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W1/9QJG4pjVBrrn3zHe8qFCFDPZRCmy94luAnBpQV9c=;
 b=h8OGTc/IGyySJsfvXmqllpfwmMYHYPGG+nnyaFtoSyNDvPyi19WroPBitkYqnYMWTK
 g23tq5iF2ebYjkDhQtdlxVzKDKu2INp0AGh/7vIgNZg+ixG72pd+Xz5q53s15OHlCV8/
 Scr36dNxJ5eE12Bl49+TqiPj1rt0eolpawMFeOBCwNGZLja0nAqhzDdbK9v8fiAw19sM
 BLKXIKVFBv6S9cN6trIpb8OUgAznsrBPt9wu4mFZgIyBvI19pOjpZcPwiRRV7oEK2ex4
 y1ieM8l8CbkV9Fz2yJW2rw2rb7gKNPAOqZwMKt29I4aXI6uyqHMHU/2WRIE6qqo2vK6P
 rivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W1/9QJG4pjVBrrn3zHe8qFCFDPZRCmy94luAnBpQV9c=;
 b=qM5cBDPCtS7nHvKJ76OvjOYNfuHXNmW39Kj7e5mCtsEkwY4vaw20qZhexMXDN7fAbD
 +OgBu+KUh7xmdT5iqYSO0uX62WK4w8XC4IykCQ/NMoovYGGgtUmK3RRMXVhZAYKVv8Zi
 9PIqUNpkxqz5g1ayJ26VkUOk2wDthKXNaiAB44yIm4fRiHbM/KQ0a55HqD2yUhU7EI6u
 UJDSeVMTX1TDUxtmS2ypc8cYUMG17hb36/cj6T6m8IDan/y5F2xkaJAzXSanHAWZVA3a
 nlQ500dTD1eVOPtPji9kMcnMUih8h+SukzOCgxf9mxQWjSm+ISb7FQPiEgnoxmJ0oPoX
 RsbQ==
X-Gm-Message-State: APjAAAWJGLV/NXqJhYyoeRKz8NNvDJH7bsdofNFQfGnADNRhf6icM10v
 gL+NZNqkl9r0N/x+Hal3MMSXmtYT95oraCYWxfo=
X-Google-Smtp-Source: APXvYqzkJQd4Q/HEey3fIfopOt/LsnyxBwczRy7hM1m344Mws4LFrOvQHrz77JH+OsM6Wh1qFlk6mVPOx1Dd3PduACo=
X-Received: by 2002:a5d:904e:: with SMTP id v14mr12245048ioq.33.1570739710182; 
 Thu, 10 Oct 2019 13:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191010125300.2822-1-festevam@gmail.com>
In-Reply-To: <20191010125300.2822-1-festevam@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 10 Oct 2019 13:34:51 -0700
Message-ID: <CAHQ1cqEVuf7yBM5fTyRUezJSARuSBG2ohyisufAxy=ME0-p=OA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-zii-rdu2: Fix accelerometer
 interrupt-names
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133511_723115_04FBC608 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
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
Cc: Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 5:53 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> According to Documentation/devicetree/bindings/iio/accel/mma8452.txt,
> the correct interrupt-names are "INT1" and "INT2", so fix them
> accordingly.
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Hi Lucas/Andrey,
>
> I don't have access to this board, so please test it if you
> have a chance.

Will do. The binding documentation is actually a bit misleading since
it makes it sounds like configuring both interrupts is a meaningful
option, whereas in reality the driver will always use only one line.
I've been meaning to submit a patch to re-word the documentation,
maybe this is a good reminder that I need to do so. Do you mind if I
re-spin a v2 of this patch and modify it to specify only a single IRQ
line?

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
