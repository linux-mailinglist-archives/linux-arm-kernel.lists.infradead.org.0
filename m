Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62928D3482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCW4iBoqyWpBHTobxqQ5M4rwriP6SLUqdaI0LMldnCU=; b=gE5Q3n8dqOjqrn
	NYNHNW1dFhw38Y4Ly2AmqVcBlhyFIFmXkHuM0nrK6eAopzLRWB2uXdakaNOtwKoQRrYnsUcFQWRKt
	RZ8D0CNHnfYwTtE8Q8mP2Rs2G8zKIba2DTxshehcF3eAUwXIOrAUJDEvrSv7WbACEM8pvUjIcqzL1
	L4ltivx+iOofM9vvoZ5IbB54pBZ+/DJyUlRLYaHZvLHe/bL8Qgi6gH0r5+lDqlLb6To9Kqu1RFQ5Z
	7WUZAhPB65PHu1W7rC+8RoHGere9z7weScNr3WKdhuS9e10P1QlNt9mfZwKH56CCPy+TvrnNmZ8BW
	luGEjOkXHrt0ceVqLXYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIi5r-0007bK-92; Thu, 10 Oct 2019 23:43:39 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIi5g-0007aT-JE
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:43:31 +0000
Received: by mail-qt1-x843.google.com with SMTP id v52so11285474qtb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 16:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+99LfkE0Ayp8m1IDOU4Gz0njgEWkjVrScr5OXbe0ExY=;
 b=g27litSgnBG1fH5c8FdwvHHIU8jfoU7WkY4210zjf7prULOHqvPkg0y/kFCN8MqBrk
 eur+7x4q+axYsgRyrUBbB0PxrTYmKzpr6/MYZgdhNheCn4BlgugL5Xhr3XOqMfgGTvf+
 eqBcOiU1wVTRLrXdkllD4uDaYSWfaFJN1F7WQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+99LfkE0Ayp8m1IDOU4Gz0njgEWkjVrScr5OXbe0ExY=;
 b=lbr+tKpx2FN/+qSttBHXR+45JazAnlE7D8NJgyG1KSRNB8pZCzAdFlehkmZ3bqQ8Fd
 F37yoGe4I8as96AIBqhNQIGheQKLdw4uxqzkz5Nlbc0EPsIDPFJkQejlo1hgGnPU6FkD
 O+ZkPhgP2yxcHepT8AvFCvDK/jzPUDczawOiu2XqiSbbwKqffkiICb02gz23sEwmX8qZ
 2RN2LGK8UmW33N8sYbSYBp5ix3uWUQ88yQQZr64fyQjRj6EJPjOtRDWNSAyaDds4jX4i
 Q/kf0mm7iR+cxxSQ6PgvZem2lthbbfZven6FLum0uZIQoSXIGTmCXncSnzoIzqa1KQkC
 zalw==
X-Gm-Message-State: APjAAAUxILTPaAVlTcUR5II3+O2GiGcZLpDhFBgImHXKvYLIitBEZx5x
 al4Xi1m9TdMnXGLWPftAc7hk1XIuBibyMAeXuUQ=
X-Google-Smtp-Source: APXvYqyKAUsDXXorfPQ38wIFUSbSjZKAetsJg1J3PqJn6MQDhqsbpGCV86yHgGv+eMYgGt6cxc2ZBkuC/GpIyIcn7pc=
X-Received: by 2002:a0c:f702:: with SMTP id w2mr12680741qvn.111.1570751007441; 
 Thu, 10 Oct 2019 16:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-3-andrew@aj.id.au>
In-Reply-To: <20191010020725.3990-3-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 10 Oct 2019 23:43:15 +0000
Message-ID: <CACPK8XcfNWkv+iiR8xFfDV6puvRpJUAsSMeX0rPe15+N_X75Bg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] clk: ast2600: Add RMII RCLK gates for all four MACs
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_164328_652955_C0A5CB85 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> RCLK is a fixed 50MHz clock derived from HPLL/HCLK that is described by a
> single gate for each MAC.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
