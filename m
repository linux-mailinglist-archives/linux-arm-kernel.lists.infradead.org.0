Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C49501B102A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/O95uL/O2mVRGDb74Sm/A0sNCajqcbFjZyl5gSvY0E=; b=qQ8J2BaO80EwCo
	ZMFb3XNOUGluWR/g7aq4G+NSPPd0aKfxnpBolBq27aXPD9yiWYR7Hxd18YTHGFF/MPZ8KJKeuxTHH
	ZpLJdAhcNsKIGLYiBRsoYxdLazDX9K6XrYjJs8FYsnVzjln2Fknx66fhktE23NU/VFnZdVhEmt94K
	d/YJgK5ebW+8YutSjDs6rKkbP3aVW6QOe/8OpgMjOGXkE65A/hASIYXXZyxFL3RCRERNGd6u2x8g9
	hbYJoKE8sg26ti3b9ogwLKTOC2Clk2JM8VdwnPx55hlz75YHm7Sajxo6R7U7JpYYM2NLDqS+HBZQt
	jha3wbpyzTx7tFmO1B/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYNe-00085a-MN; Mon, 20 Apr 2020 15:30:42 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYNT-00083d-Sv
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:30:33 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MUokB-1jqdz23vZR-00QlPq for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:30:30 +0200
Received: by mail-qt1-f180.google.com with SMTP id l13so8774697qtr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:30:29 -0700 (PDT)
X-Gm-Message-State: AGi0PuaeaAhYxLtGaYbpycwZ53A6PA0nt1T8JU1kKwhrH0AM+IELOmK2
 aJ5ScdWfN4jwM6mxDh149vy8wetf0tqUMtH3adM=
X-Google-Smtp-Source: APiQypLhLzIsRYWGfF98DBq4uKZzSzPJN8MMOTvy5MVhjl3hGP85aC/0o1FORjrYoWyWldZp7YYnG/7IW5g/n71Fn60=
X-Received: by 2002:ac8:12c2:: with SMTP id b2mr16681150qtj.7.1587396628774;
 Mon, 20 Apr 2020 08:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-11-robh@kernel.org>
In-Reply-To: <20200419170810.5738-11-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:30:11 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1yPiSEBA_bjy2EAcRygp0MqtTgt8Tu-JNJrx6Bb_Ff0A@mail.gmail.com>
Message-ID: <CAK8P3a1yPiSEBA_bjy2EAcRygp0MqtTgt8Tu-JNJrx6Bb_Ff0A@mail.gmail.com>
Subject: Re: [PATCH 10/17] mfd: vexpress-sysreg: Drop unused syscon child
 devices
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:dU+lHbOmw5GfikMmk8IZVufXOjqqyzc6UYpy86YG6QCbHu/y7Xn
 +bZruAi93qGBh0K11C9a8xYXwOLsLZKREotiNX4F9/qO9P/hcCFuTAsoyMkDjmc3ciQwHNw
 DWFxCF29QnM5+FFxaMlurMlnft/gqp4HrRVIMqebT5BwSLQtWYAsoHYAvDSodk83Eufa0Dj
 UOLztdW/F3OBh/jeOGoLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bYZhJ0GM238=:MTVw+TxBSZKa3v5jUdzeVK
 xlC9sufp/YQdwZIGj56/zUMeVBr7omfJfsNJsQoiZqQdPsVbPfMvrp84vKpYPBpJWS9r7vKvD
 3Q7TJgCM9hyng3kuWXjvqctPdumfRBRkiZQPPyZmuPfLQrnrFOIjSagyKS9HwWO/c+IVUqDad
 k5YWq+8w+SV7nYeYzvmlPob4H6hxztbfhJOQYLuWZbKN7isbEEGilN3HFNrqwsyh3c73GCJfO
 clb+Ea+aUh+7HAJ37S5l9kdbZ9CUZ/NrejlweUGm36bQjeFZr+Zkk+6CLKQTIeaeeESNS/6Xk
 7/cR7LyjGPVF207KqmTnf1I2iI54gL1YcbFRsQD43C6y+C+Y9MoiJgIOAJUAMqLTq1OasFe9W
 2TGSkpIfm6NgiHKEnA4wUQYbiXPzyyI1eDqz9w13ZGycfkwriZX3yiSo5f+xN8zxR/z7d4+gb
 7+QIPJ+/LuG0DyWp5L9SZi0SEK3FClftHgcfoA3COv0GY2OIH8yT3MoIpfu831AVIernsnYOD
 ZqBMsogMLuSE+t8cNxR4RArp0Voup5cSs+hmu6TXolBzYukviPZNyBtLAfyEViD8y0LmwbSQE
 e0WHXRGpodGKpfLTUMNN6SsyRYOHbgDYoMSMAgoUu+a34/XdKfA31vHw0nBp1clS7/sh4XzRe
 9aSHOQ6r9B7KmF/u4bgQhHP9u1ynIto7tuwm4beglAX9wQm0FbebxHDKRqqySYzKvuYvT/kDY
 P5NiXLWvz5Uz3iYvmlu+NngDxcW9qiTzVmRUq4TmRbpAZJZJl+B834EkMMkWaWzBvrfzeMS+k
 maQZATmuCZnuDS3B4/5ls0yjCxqhUTRb7gu+HZ7rJ9fvX0pPxM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_083032_236533_D66885D3 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

No description? It would be nice to know why it was added in the first place,
or at least that you were unsuccessful in finding out why.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
