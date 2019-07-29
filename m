Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9804279BA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyK11+7FJTxKgqaT2DVrwwyguzJ6KNJaIi3N9iBv5GM=; b=SqcO61wQpOvBqo
	EGYaC2YVwi0GP5tOqRUwPgag8WK0Z4tu9fAPlkOgo49ro+02K3EksQMzA0d+OJh5YajT0sFSw/P6i
	fZToUOMTFSo9dcisX8hiMgkrTiH2vg8cj17+JojASP++o3z2RYK4dhfyP0s2RWdS3P3ckoCWbEfQt
	3JjoZtDdCHYwoNQowX+jKlGht1nqHcJNb+MxkU2syNJfTNLnthriGVVUNbSbwnLHH6GiwLtJ4OagG
	7JOM41i32ep/pHyKBjQWx6Z28lLTxN58jqnVSd7Il8CvmYtSOun1e0SyEj0fLwXGd6TY2Zkc9Q7NE
	SY/lxLSXq8RBk1J5qjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDeJ-0007U6-GK; Mon, 29 Jul 2019 21:57:43 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDe6-0007Rl-82
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:57:31 +0000
Received: by mail-lf1-x144.google.com with SMTP id c9so43098258lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WhB+RZ2P4weNNxlV3JiaH27Cy16VoQbodVkM+yi6FAA=;
 b=sVE9zpEAJSM4jgNF+JxW1v7N1fcEZmKVkBwXW6KNsVWmVQFLHqD9d+xWPT9I2jAv7d
 TWVaNyRqpnOg3/0m2gk7Ch7jfca9Jh7XmgTvTp/mhbO/osy8RPidS52ZbciVLnLEwdVN
 13aomLVoHqKP8mi75hzRriyJh55sc4+nlArQq/OmMsDigdVM12/m5kKoc0QeQ0A/N+rn
 uT5q2dRFCTZxrWDs9LEKNvSy227d40I8Q4tKWwgJf09KBFWvYLj22dKO7HSBJthn38/j
 qYBSQpexpirObv7xVzyDVw0nZYVjTHFYX1mCs0JG/ZipMEBdkq6//TrU3cy7vGuxUxj1
 Nt8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WhB+RZ2P4weNNxlV3JiaH27Cy16VoQbodVkM+yi6FAA=;
 b=PCbFXH5pwayG25L9lKAZRfH0LrQqfbK43VYtKa5OHaA0exJGo2dpSFr4VkizYm5EDk
 SgboScbVd6ilkN4qY1iIf6tHyuolipglBivh99TtA4C76XqrhwXZyYVcxTdNAHP29jq+
 1PWZOLrxvrrh8N8wqMjz4eaPe1721kp7DS7dB2sv+p2w2PEgSmwtZtA/GAmEWPEjuF/X
 dMUBz7mBlMzV5NQ6Ix7AsLH1OdG52b7aW8FVPXvP5N4QAJ43oTOStqM6QucY06GsgRov
 tV6aFiRERPISoNlY1/fJ6MX+ep1mAkg5s0Zpm3LLZPgH1FW5CrAG3wI20OLf3tzBUMH1
 Z+oQ==
X-Gm-Message-State: APjAAAV0OXkTlKv5uGPMezv28AVTAO2ie1LHyZ5oaWHR6BO2JGwH1mZ/
 95cQVo1bDQuGLNpXzoZ6LG3/Nf+VDS4KW5ghZOdTyw==
X-Google-Smtp-Source: APXvYqyBnwkv1VRTZGXZco57yirARpTFLPJRJ/RvgElvK8IXTHcFCH30jet7L01e4aA0VROLzr8OPXOGn2X/EdVc1D0=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr54444437lfc.60.1564437448905; 
 Mon, 29 Jul 2019 14:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
 <1563564291-9692-2-git-send-email-hongweiz@ami.com>
 <CACRpkdYhVoP75ZDfASW+DH5yf-a5diitiXsh7eLsJx5hsTC9sQ@mail.gmail.com>
 <ef9d9c17-6e2d-4a4e-ac44-f8da4bb3b8eb@www.fastmail.com>
 <CACRpkdZxsF9gQj0VicVLsPKXg6rKA1mLwbywmazOf0w8PLnOfA@mail.gmail.com>
 <f2875111-9ba9-43b7-b2a4-d00c8725f5a0@www.fastmail.com>
In-Reply-To: <f2875111-9ba9-43b7-b2a4-d00c8725f5a0@www.fastmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:57:16 +0200
Message-ID: <CACRpkdZcLNe+oM1jWPpva0LECc-P48ab3H-kG7eabMmSvmvioA@mail.gmail.com>
Subject: Re: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_145730_296557_87A0DECC 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 2:19 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> The behaviour is to periodically emit the state of all enabled GPIOs
> (i.e. the ngpios value), one per bus clock cycle. There's no explicit
> addressing scheme, the protocol encodes the value for a given GPIO
> by its position in the data stream relative to a pulse on the "load data"
> (LD) line, whose envelope covers the clock cycle for the last GPIO in
> the sequence. Similar to SPI the bus has both out and in lines, which
> cater to output/input GPIOs.
>
> A rough timing diagram for a 16-GPIO configuration looks like what
> I've pasted here:
>
> https://gist.github.com/amboar/c9543af1957854474b8c05ab357f0675

OK that is complex. I agree we need to keep this driver together.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
