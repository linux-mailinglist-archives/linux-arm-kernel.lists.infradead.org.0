Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3BF58177
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhT3BS5k4Hl7ulzQXENa6Yq0C+Tig+lUngtvckEdI4Y=; b=FqvD6wFS/oiLy0
	meX9/FXnpasWd4j8kygQ62g0ARJ1U0dnqS6CvKLpCi7ypIsFRQfgyTzhgQcOgaNpq6HtnaMlJFiMP
	+XLIzmiP1WTUDiBCL2vFdJD98fLRtbm/ok1RP8v6chC9CLpSTZt0tKXR0vmpSydzxHyXqM0e4jFEf
	ST9MlEr8yUZDeJ0CUdLQbnQ/SZkumYSffomeURvT+A6KWH6KWUcK3+ZbuNe9b4rj9kD2AKGZOJgwr
	GOoTQzr92AZ35qLAHN0c90mOOSSiUMh2YD4IVZ6tLvSyox36NoqUu7bxNfmbxmWOJ6PpQerYmip3+
	d8G3Mq4PBNL8oMKLM/Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSXx-0003ws-HL; Thu, 27 Jun 2019 11:26:33 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSXn-0003wN-4n
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:26:24 +0000
Received: by mail-lf1-x143.google.com with SMTP id 136so1310757lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yf/4QsQz71xnsufXmplIhM5PQjWjtA8iRNvCLywUsCI=;
 b=HiozRSV9jjoEd8lgVneXDXnUBP1+IEYIg+jfVj3yu3YE2rDCh0mQf6PCltXafOZuRQ
 wgzquUBxyhWo7PDBS9m/LWFwnCANPBpvCZrQYE2oHj20GZq/2E9ThKk3E8NPw81Lz1IR
 6wqLETMA8WyJzKNmXnDzqbNY6sUIuKzxUMVE+GnlYNfor+m9ZCB+VLKecag/t5wKJ6Jd
 T9zmH0RwA2Aq86TTmuzE2Qjhpw0IXYMX8T1nY+VIb685SluVHK84SiGlfHixp33uk0NX
 kmZSALvd+oLO52Ab1ZdDT5vg1sdlJ8tHsJXVo/3VFxdWskcobVYms8f/hqACvEI3a+uf
 LmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yf/4QsQz71xnsufXmplIhM5PQjWjtA8iRNvCLywUsCI=;
 b=tXfD4OxxhdVbwFzgO044vTYrS5G73+LmuI277+HV/INDyIwOoRAXBOzvySa3H7hZcY
 eHV9pxPQVg89GXFce2nbLEI8/3FFMxn7iut/lOsxZNIt12pjpYgFwaeUxtpcW6q1ylar
 D/ROhepGGFzgBrJl2RIYgn57vpsdQGbMsaUDPRUVMBBs2JkGZcjuyRZ5cAHezFS0Gb6G
 68wbJZLEIZ3DcsYKWm4J47zup4k2C85zbU1URW/8MxP+4+zTLFvaeHWoAXxIHRBHGSD/
 xXqm+cAgJZFeivOkQtVzWmV3plx2JqJiycOoQz+SxGIlL6hAEnE0FjTCPbejI0z0VuLT
 fFvg==
X-Gm-Message-State: APjAAAV39Fh7jufC24n0Xv6KUH9zNfknG3R+N7KWrLkPbhDDWdEDa16A
 hh6EBOq2vv9Zsf925Xhwb7f3abhzivJyDFAXZz7Buu8CJps=
X-Google-Smtp-Source: APXvYqzeLT9m0qZPhFXMQe7bGeM0G0YNhFKZNBdroL1getpvV13XvxWgav2h1PfavnIunwZFc7NAtBe9miLt5qxA34s=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr1687908lfg.152.1561634781537; 
 Thu, 27 Jun 2019 04:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-2-andrew@aj.id.au>
 <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
In-Reply-To: <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jun 2019 12:26:10 +0100
Message-ID: <CACRpkdZtTy-HHu2O4aOaqV5ZdxcYYPFRuxK2jjnw+_O1xcF1rg@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: pinctrl: aspeed: Split bindings document
 in two
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_042623_191441_E0AE8E64 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 4:32 AM Joel Stanley <joel@jms.id.au> wrote:

> I think we can use this as an opportunity to drop the unused g4-scu
> compatible from the bindings. Similarly for the g5.
>
> Acked-by: Joel Stanley <joel@jms.id.au>

I assume I should wait for a new version of the patches that does
this?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
