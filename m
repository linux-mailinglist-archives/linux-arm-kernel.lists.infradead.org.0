Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE0F12AE6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 21:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF09vFzyHMhfDVnKF86/+i3/vQU+gItDfzinqn+Zw/g=; b=qLQrVBB/BUDYjW
	lvkUqR8UVqO9i+yp43BjKJd5fjGDQi2xkZv9HHEZ3rruO6JAFvCE6r226HCNUKGTUdVGvxFc6RS9b
	ES9AB/DZok2OBzcOaimR3LmT55B1zBmqTPg/t8KfTnYpASNr+C3/yDHQ970Sh7v0UWWtrHjXm8Nh9
	lcm4dYU8tbUbZOMI5Z2+UPE0YgJoqQisQoAZOA+ogHZ19917Hj331/YKtxUQ2cYVzLlU0xuZ1sHIl
	pcPtXWX05zfzHWe3c6mOCl/1iaarou3AsypX2qi1+ZfGk21WsDJ+U/PYN5SWfeyWnUW3ZCNB/cYJ9
	aNeIU/Q3bF+9l696Pzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikZi8-0001QQ-AG; Thu, 26 Dec 2019 20:26:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikZi0-0001Pa-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 20:26:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so11849336wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 12:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9U7JTfD4fduXLjfQ1Xx2mG/4Nq5G+aypGi2uRZjCndQ=;
 b=Y+/E7sdISgFCod6NdnHJW479g8MbWWiNgwWpI5rVpokct4dLSn3EClz4zxD5nUcwHG
 849iZdjDWcPvqsDGib5WzIiUhGuLV+apNaE8wxvr6ziNcMBV04P+eNSrmZheHrP9KoN5
 1f56JreZqERgJjZe2LLqBOpErT4GWmzWRSJapOT42TkPWV/3Nch5oKXTNI6qsQQJw59Q
 /SD+GdekkD7sWS3z770vw6CkDlXPFk3WkuhXb23RpwdtmICcNf6wxMByJxP80Jo5J9kp
 0QXxbYyDDSjx+3bMkRs9XA5u47uWRz2SYIF9gBE9sbvQScuTJXiC3PGYpDnBV72LD6QP
 75xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9U7JTfD4fduXLjfQ1Xx2mG/4Nq5G+aypGi2uRZjCndQ=;
 b=AnT4X10UaYqvVby6oWKxPTik5mKz0KagvhWw6LSDqGSRRP1FGzHvs5EBkbf0JEe8q3
 OqaQrxWPv4QipB/F8QutRukEvqOSoj+WMNST4HuKyvwtNkyd7lZwbp27hIAei+U34ZmT
 nyuePIqtXhoBgaksdvGQ6lXqNapkpdVItZuGfc6ZoeXqBoxOq5wo8Z3Qlsyowy2pnxMo
 vCNnsYtYraFpdPX+tqk/6vjjvfCiW0d46CHJPLgPheg9xXCfMkzRgyduuKdUMrX7Rui4
 lsymefuHwMG3bDk4ki/sd3XVsrKGkDlj3IAv6jUZm2EfmxviT/cYhWpFmSSKqzF4rR3f
 EiPA==
X-Gm-Message-State: APjAAAXLV/h4si96+U5g+kHrXtEfVCX2IYTg0x2IoY2nJzwJXuzHVf6F
 VfqYNgsoNv5bGkooi/qZKSI=
X-Google-Smtp-Source: APXvYqwcuB8ziCCtYYFgDEUXH4mvcKEbxT76KLDcss6Q4USj5UvoJ3HbyoEmisuUoyobLrZHRGuolA==
X-Received: by 2002:a5d:4687:: with SMTP id u7mr46714621wrq.176.1577391971163; 
 Thu, 26 Dec 2019 12:26:11 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id o129sm9470927wmb.1.2019.12.26.12.26.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 12:26:10 -0800 (PST)
Date: Thu, 26 Dec 2019 21:26:07 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191226202607.GA9524@Red>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
 <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
 <20191226104419.GA26677@Red>
 <CAEExFWtNZM3QSSMEksK=-opKZqxvCqyG2=3=iCo3VU6tfie64w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWtNZM3QSSMEksK=-opKZqxvCqyG2=3=iCo3VU6tfie64w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_122612_603048_9A15A782 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 08:47:47PM +0800, Frank Lee wrote:
> On Thu, Dec 26, 2019 at 6:44 PM Corentin Labbe
> <clabbe.montjoie@gmail.com> wrote:
> >
> > On Thu, Dec 26, 2019 at 10:27:51AM +0100, Maxime Ripard wrote:
> > > On Tue, Dec 24, 2019 at 07:30:55PM +0100, Daniel Lezcano wrote:
> > > > On 19/12/2019 18:33, Maxime Ripard wrote:
> > > > > Hi,
> > > > >
> > > > > On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> > > > >> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > > > >> H6 and R40 SoCs.
> > > > >
> > > > > Thanks again for working on this.
> > > > >
> > > > > I'll merge the DT patches when the driver will have been merged.
> > > >
> > > > I've applied patches 1 & 2.
> > > >
> > > > They are in the testing branch and will go to the linux-next branch as
> > > > soon as the kernelci passes.
> > >
> > > I just merged all the other patches (except the patch 6, for the H6,
> > > as requested by Vasily on IRC).
> > >
> >
> > Hello
> >
> > Vasily asked to not apply H6 due to my test failling on h6 and since he didnt own any H6 hw.
> > But it was failling due my fault (a failling build).
> >
> > So the patchset work perfect on H6 (opi1+, opi3, pineH64 both model A and B) as reported by my answer to this thread.
> 
> HI Corentin,
> 
> Although it is not calibrated, it should work on the R40. Can you give
> my patch a try?
> 

Hello

It is planned, I will report the result.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
