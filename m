Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EBC46CA3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 01:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNjcevnZzCN+uj6iKlflA1PFbtDEAZvpFoxCWXFRkp8=; b=eI0WP6hYuZDhSd
	BlwT8CicAv5/3kKM3X6Y62mJ6M9lYLgNie/GVqan3rU745Ed8mXEHVbOpjF6SBoJgCx4c09aSW5W2
	6o8RvBH0pIu2bWL+5BDFBFyZYD7QS6+IS3ZWRLR858vGv7VNjwmCTwljCDUdpRdwfwrcEJCwEY4I2
	gHtBjT0ADP4tT/5Gl8/K5YYlgj2gRUCMtpkPbAXD1X2s9T1VeL9fwpa3KyVWO1wDGPRHtj0r7oiKf
	cmdwUjfGwjtT8oZJxQoz4tJzP6ld3MbieMukfAaLY8idDKfoY9BoCik2c5tbE0wDSd249DTGR2Gmk
	wPf8AaUbF+6FyZoS8PLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbvIp-0002FP-QS; Fri, 14 Jun 2019 23:08:11 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbvIg-0002Es-I7
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 23:08:03 +0000
Received: by mail-oi1-x241.google.com with SMTP id w196so3135925oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 16:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jbs5gzhwgZIg1gF5LjyrTrjnsR6guamGnNknrQ4qVAk=;
 b=NWloPDLUh5GtKP0cuS/9WWyBMm8xtdPz+BFptPrE5sWLkV/PvP+EfVJG7YDdHXb3CK
 Ko4E41KT54QVFCnJmwAIBq5+lRAlfKo/2aLqHYK1SxQ7W3fZBmMBTvYOx/C4z3ZIc8b4
 v7CucK3frz1rTBiEUX65UtrBkarGsV66+Q6+lqvZF6qnciOYwQIV4XX+UbX++7CRZXVl
 gqXLsO/Txz+RofTh6dtzUyfWVe5vtiMpMRbT/Uq8/eKQ40vSMcWWspANqD01F5o1CEsN
 aTjgId6A6EtHivKIcbvYmvtz6pQM1IBhDPVZwQBOj4SY2xWcock67YW3esttnz/5BHOp
 Nhow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jbs5gzhwgZIg1gF5LjyrTrjnsR6guamGnNknrQ4qVAk=;
 b=L10KFtLqR0lONsyOq+Q7RK2iMaSj4MIa7Dz0Y16TCKsZKxALh2/hcGaWmEZT8auort
 SiexWITWGa1FfXSWOTGeEo1wbEN79IC5PgcqGG7hZ7BbwAUWcUzVt0/dQljVCjqqquWO
 V58KKIpjN+G8ynmyXjGcHOnH2w1FKnbaOlQCqjDdkIgx+5OJLkeL48c6MHCkqRuTxerK
 SJG+bTxFTkYrmL9fY01RyntsGDEXgagUVt7i7IDe9IcEliEstzBlIhB60QjBLQbkDV8S
 mUo5hHOlwtjnHFBwbTPlmrUvJZz77ngY0xl19nX5ZR5/kuUXBXrq80WbOFTC71H/pAMd
 xITA==
X-Gm-Message-State: APjAAAVnEjW5W6xMw1nj6gigUntKUmFWN3XlTj50ZxsgXbdjnHilPR/c
 c82tP4SozNBAqvBWXJvvFlnFGKAqRU0n9t49ljM=
X-Google-Smtp-Source: APXvYqyH9KgPHZJQaQQ2Ns83mm/RN5lHJA27CuwFAUocbtaCA5Vog7dH3CLQILg9/hDPeQHBcBx3UH3A9hbvupgCz7U=
X-Received: by 2002:aca:e185:: with SMTP id y127mr3447788oig.98.1560553681382; 
 Fri, 14 Jun 2019 16:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
 <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
 <CA+E=qVeOSw=_z4OiQ4++z8g-KN29UYVXGicNd3PtHobg4xaG+w@mail.gmail.com>
 <CAEExFWs58UNcVcQNnwK3dk5cpmfQRnjdRWAmYs5M1t_ONr1Bpw@mail.gmail.com>
In-Reply-To: <CAEExFWs58UNcVcQNnwK3dk5cpmfQRnjdRWAmYs5M1t_ONr1Bpw@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 14 Jun 2019 16:07:36 -0700
Message-ID: <CA+E=qVf-_2DWbf55bCnjbkZH9N4a1_K16OxN9=o=NrZAV7GXPA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_160802_605047_BA341C0A 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 9:50 AM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> > If you have a git tree I'll be happy to contribute A64 support. IIRC
> > it was quite similar to H3.
>
> I built a ths branch and I will do some work later.
>
> https://github.com/TinyWindzz/linux/tree/ths

Looks like you forgot to add your patches to this branch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
