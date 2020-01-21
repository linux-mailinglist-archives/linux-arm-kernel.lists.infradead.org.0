Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E84E144043
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILglC0qknJXg65TEdm1i9KOnsz/mM3wvjtC8jYNcc+0=; b=dt3aWw16zolxIS
	zX86KneMQmvAuTZu1vqBnsq1kBxrE9BYB6SZbnQ2FM7VFDwacDj+QCRvlEgvbPQ57HZicnUzPGpgK
	tyRePHrLaMFKIXI6eaeS/wnWwNz9iz1vky64pJnLsWZv/wtKhAFcwe5ok8lm+1JqEl8SIz3NqDtTT
	arLa+iGY2/7TkdzGxqOhnNAHaBrhO5FMKjCnciV1aLU3gSppNX4YijUPIxRCVX29TEQOkWqIeW5oj
	o+XmOr1CLmhtIaSC8HnzmlnUppfUM+N4KoU4JFLNU6G/mLlPPxXRzjxe/XBhgRdYm2dGy0wIxmf9u
	OHo1iHvbMO8NHBKczIkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvCF-0007KC-RT; Tue, 21 Jan 2020 15:12:03 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvBi-00071y-SJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:11:36 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1McpS0-1jShyU1ruc-00ZyDS for <linux-arm-kernel@lists.infradead.org>; Tue,
 21 Jan 2020 16:11:28 +0100
Received: by mail-qk1-f174.google.com with SMTP id d10so2593215qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 07:11:28 -0800 (PST)
X-Gm-Message-State: APjAAAXg1zHiyPt2omSbynWmrcNdltG9vA69tz/H0fkTKa1ip2oJIAdT
 0/MVUZyO6EoyCg43o/v9vGpnEXcAVJeCnOAQCjY=
X-Google-Smtp-Source: APXvYqzi6p95hHekGtgpHUuq99FRYZcaopKwXcC72TbiR1kO/b+K0GTaMvWpR985L8t471EI9eZkxsPcBlxx6hhL0gE=
X-Received: by 2002:a05:620a:cef:: with SMTP id
 c15mr5026356qkj.352.1579619487171; 
 Tue, 21 Jan 2020 07:11:27 -0800 (PST)
MIME-Version: 1.0
References: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
In-Reply-To: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 21 Jan 2020 16:11:11 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0fWf-wd8exJa+_UL9n0bQ26W6wd0iQH32osM1Q+cLu_w@mail.gmail.com>
Message-ID: <CAK8P3a0fWf-wd8exJa+_UL9n0bQ26W6wd0iQH32osM1Q+cLu_w@mail.gmail.com>
Subject: Re: [PATCH V3] firmware: arm_scmi: Make scmi core independent of the
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:GwI2XLnDtyNTC0TfCDYMohvtVqVzLpl7LYuq68C0VbF5P/s4nEA
 bVXVqAL6JY5emU9kkmae6w9jv+HX6/9P1jK2dUCqkhJlErj77RaECtf7IZqHCX4y3JvVQQH
 FgS1dkbeGN7ftaM97odfbUuMbSOFIId0HDl6GLFhtPIpPhqNNQvt8duhnC7IhrvqnDtklH3
 laKKAy5aa/3JyrKn3NhWw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Bz95n24iAqU=:zAJX1LhhtBEmC8vb/s9cro
 0WHzZDCWgT2Jg94SZcKCDobsVURh6q5zU8YQ1WadvQqZheWU/i6nx6PsE55BV7Jkh7vfXQg1m
 1tOL6n/BWekZ2VPIip3lARmuGSYYPlUYz+fl8us1/W+4Thmsa4tSU83HqDJHOE5c6CSWCshzS
 nbjpeGZAVHHi5q2VBd4w3l5OJriZre6JXqq5X6PgxuRJ3XQ/sPAElPnc9B49quhCJoJN58QGK
 Ck6AM1o/n7Dt2YMULSMBoXq6rMIreTkPaciY1oWcAbIxv1sxUe2BMhZ/OpVcE725o52nmYnd5
 WxCuLIAr63p1lN3Fcv/utButEfyK7LIajY3vGZZd9TLcxCutEABG0VVPtH9X+fNz8ZbPxzx9q
 LuaQn8JiNm0fH1n3kPyIa5lZq9RmHyA5GPv+pTlBgQGZbsksb6MW1Xy9ZbHxL/MpwFplWQZfz
 XK2DdUuWLHvB9FrvUlMXhmFQk370KbX83N8XHCMMtIYOFn1//5tCT3ZHep6do3JB2PZssnzmS
 o+FPMmM4nfG7qhWQyJrdPX4kmeiDrgf02BmznSTaL2KIbE0ASOd540uR+9UeQe9HmY3/5STrH
 lvEsNRsy4k0VD95eN2KjSl/ebfX9EDDkEJrjJYsstSfs+cTV3dfpFiQMvtXkbpFtAPvDHRWJX
 nAe9ebPKrWPxo4zfHFTXJUIoTSRFRKlJT6Y4ktiib5WqENFZcmdET7Qqi9QuZKSZDH1Vv8yjJ
 gMerr4bWRwvcIS6siw9KAC99kxhUijNmD69S1pEwIulZf6wyxImdHyTS9U5OsNv8xdjZRMWZN
 0z2w6/6xuuVupxrqbSLonPqAZTLOrdNxYDpr1iI86usc7zJsMQccYTP+4sA7syBfdLRRNUt9r
 zzoMeWnXuVT4wLn3dNKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_071131_253940_F7FB1094 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
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
Cc: Peng Fan <peng.fan@nxp.com>, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 peter.hilber@opensynergy.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 9:27 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent on the
> mailbox transport layer.
>
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
>
> We can now implement more transport protocols to transport SCMI
> messages.
>
> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
> @Sudeep: Can you please help me getting this tested?
>
> V2->V3:
> - Added more ops to the structure to read/write/memcpy data
> - Payload is moved to mailbox.c and is handled in transport specific way
>   now. This resulted in lots of changes.

This addresses the comments I had about the implementation.

It's still hard for me to judge whether this is a good abstraction as
long as there is only one backend in the framework, but I see nothing
immediately wrong with it either.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
