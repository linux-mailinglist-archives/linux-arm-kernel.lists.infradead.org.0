Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89D213A4AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kl5PClwbu1zpngAwzxMtFUJVezXXFZ7NCW33Tv8FVPc=; b=Fu3NSWvmJDFuPe
	HAlZp6oYdWxiLeThJi1xU4LszQmfQCbF3WcOSrmUohxgdsUxANqL8bi/sW+ehPRcNQkdWlMjDjvCD
	dyh3gZCftrinyZtSNPaAXycV1AARxyvujK94RYnapAV3aazL40CpFmtPI7akSLcK3ppbYUzQSQyFB
	o4HzrGDtuhD4ccSSkL/5X4I0qxSD0JYpX+dE8oZNtjamlChRX1m4RM3MUD7O5G2p9NEEi+V1y4cff
	h+3aGQlY/NQ00kMhdlDz3FrfEWaEJihzftVEnNCa0vg4RyzsTmK7ssvkTRUszHooOXedADC4ehYv5
	LbNEA4QfK8RTGYDaoAzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIwW-0000YK-5O; Tue, 14 Jan 2020 09:57:00 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIw8-0000Oh-Ou
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:56:41 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mo7if-1jSrwv0eL5-00pawu for <linux-arm-kernel@lists.infradead.org>; Tue,
 14 Jan 2020 10:56:34 +0100
Received: by mail-qt1-f182.google.com with SMTP id 5so11937130qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 01:56:33 -0800 (PST)
X-Gm-Message-State: APjAAAXcQAslwXWcVJkH8BmLchBgMMig3NriRQtGHCMqBUMi7KeEfLWJ
 Zjjc4Tmq9eDQkM67LF+fgbdyh1WiBznZDe0PD7k=
X-Google-Smtp-Source: APXvYqzAj8PJkE5/uF+NxfL3FE7u4OmKH2n+jc3UkRoq4QVztBCleDWEbe6N30Yqnyj3pc1ZnGojUB2ACXN7L/Bma0w=
X-Received: by 2002:ac8:6153:: with SMTP id d19mr2796033qtm.18.1578995792883; 
 Tue, 14 Jan 2020 01:56:32 -0800 (PST)
MIME-Version: 1.0
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
 <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
In-Reply-To: <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 14 Jan 2020 10:56:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
Message-ID: <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:uEORnW5znfDkLueJOJMTdNgajbcCOQKo2rr+nN9+dvFnT+U8UQH
 6hNv/k32bmUZv252bcr6gtnd6mm0GA9pHHVhmZIQKttoUkBF3TbzWDewXhWTWnRtI0JnzbI
 JTZbD0DN20spstYgrw4cMrooP6WxWlO3uHtA+O07fkzmCiJDaCIt0GCcCdeX+W7I3kjclOT
 AxzF7OY3/l3NHELLm2GoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S9h4+pHR1Nc=:T6qviW4vCkcbKGYPK02gEJ
 87u8cB/Jf9wQuLXuXYdafbmZsML4P5W81WThbWuQ/H/j8FR+9Vsu6CR8B5RV487P5ZMcULXsj
 U/eXvuEneSZPHx2xkFwO6q/EAAjpFWsAGTC5a8jweqhiQun26s5o7G+6Kt85FPv7L2AIcXZiw
 fFT7Yfqq9Bi3hbYsi6/nWOkZPBtipb8ZvcBo7L8PUO/7vZCbiZMaborws+hgfXgPMidGq8uI5
 EAkQe2oh+lXN8myzDKV252H0w3VOgC8DCXc31igqmaieJygo2X+XmsgBSwkb6FnehbKjarFSF
 oB+4tV0HZImPqVNLPyAqH0dCIRI/GtIG1Bmf6v6dZcJP+e6DU8drKbk8StrfEFUusJY6QP5RD
 AZ9xnKTkZmU/v5m+T9GxlaU1wB5TToN6hpWen1QcszcSbiJUUFu/QrqWvLbFUluh/hQB6Vd07
 K7F/u01trIYSeP/yVjWqa7Nl4FJ+7b24ro/dF6EunX2D7nREr0ZzTyPcLk85usnoaO2Bh7ezH
 k63M5ToeNzi6tECBKXbS343CgfYFz072gwMOZVRmdO8Vw+8pVTOyI6JW9uRmd7SOhnFpNxDX9
 0A05ieeOO7wkAngdEKrbbC6GQDuxczO5JHzB4gfo8WU427Thex/E5kD+zU77vavtWwHgKahFd
 oFXeoalIt1OLJRW3HqUYzXy7Yblv0ElIZvN5009/LYmcbhQca0WIpL9hnIkXWalQ307U8hzQt
 RzzZNtBDy3hgW52wf6gVVr6HHyMxlZhwd+xE8ofm7xwR6KUb5OCdkjwzHN9s6nxMrRWDAHMzi
 mQXleURZP2HY+ihsq9gHX5LV6HRGKikKihJUpe6ppRilZWVs/jBx1xabkMdTPJVJIuDI66Ai4
 eAfhL8Nf019IrwW3ZDvA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_015637_122966_3318B934 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 cristian.marussi@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:26 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> On 13-01-20, 12:36, Arnd Bergmann wrote:
> > On Mon, Jan 13, 2020 at 7:42 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > To answer all three, what I meant is that the payload pointer appears
> > to be transport specific and
>
> I am not sure if I understood the below statement properly. Is there
> something missing from it ?
>
> > should not be part of the common
> > structure if there is generic way to access it.
>
> The scmi protocol requires a block of shared memory which is
> represented by struct scmi_shared_mem, and payload is this memory
> block itself. This block of memory is accessed throughout driver.c
> file using ioread/write commands. If payload is transport specific, so
> will be those accesses, isn't it ? Are you suggesting to move all this
> to mailbox.c (the transport specific file) instead ? I am sorry, but I
> am not able to understand how exactly you want me to reorder code here
> :(

My point was that you cannot mix __iomem accesses with pointer
accesses. As I understood it, the current version uses a pointer to a
hardware mailbox with structured data, so you have to use ioremap()
to get a token you can pass into ioread(), but (some of) the new
transport types would just be backed by regular RAM, on which this
is not a well-defined operation and you have to use memremap()
and memcpy() instead.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
