Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9129148DC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 19:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLQZIS8lYvT6elS4pzkQsX4mPLq8yLpTlbth2WUtvWw=; b=QhEJDJ2IZqmyvX
	8Kwzv9rDRONM4Ooyffb5M2tv8Hp28SwzmiTlwxAux9zjfvgNsGhFPNa1tvAyhKklibx1p9w8Kidll
	ipDg08dOsAZnd/KsdLME8JI2//Nm/eEmllNfE3l4TCDHjiKZQD2u9sbs7aY48PkMvw8LQcu9mePaS
	Gg+blqZAvtOjbYLkSPMvIRccbUlFA5kKfegw4a5NVNyYxh+pcVl/WUTbPLdZtq2r96zx+bapL+13t
	81LW7+y+UMxf9PMIxR/YhOIFWMDJV3Y+Q19PUTzxGvRo8dO0idKyKJHQ4bN6xDXrMRx15nxY08Ckh
	mxxLxhg3fzyIXs08vSBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv3hm-0004DL-Bc; Fri, 24 Jan 2020 18:29:18 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv3hW-0004AB-Dg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 18:29:03 +0000
Received: by mail-il1-x142.google.com with SMTP id g12so2393276ild.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 10:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MzOM8tQ3sP2cY0Y79Mb3RBeF9aKri/D2BrjJwln0ZMk=;
 b=qe6QhTRtRrfS7XZjwODUAHPJVsjCM7EAv1BjXiq8vM+wyGaCkf4ErXr1JG2IlwFwOD
 u9RXwRrLDgt+3Al0S/p2qQa78Jqw8xeD6aw7OKJTdzYfO21xbkAMxuIBwXxB5oGdJDOR
 vgC7zdZzKXIxKofOKx4A4zZFsoy8v/4Vsv6ZFNGBkXSMNzkUBvMWq1x88QB6YZ8tLWDN
 PxgSBlWQpLAQDRCyl5VvPuB56xlaqSqwFl69bfgH2FHRS2YVyqD5fiP5lzC0g/RizWfR
 grFWnAsZ7bfZoCsMIIHYNFamLzeNBsDIigyYkDnz73UXkrbz/nLMOhHe8fwYy41V3B6X
 beNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MzOM8tQ3sP2cY0Y79Mb3RBeF9aKri/D2BrjJwln0ZMk=;
 b=r8ft/cjrNoRvWTkgkF7Q03myL21bDsSmuUVew4aqseLfZlGJ6NMpAHPJvxT/QLul9l
 rA3DqZChAAQKkeWZJ5XdSiJ56TNQYRINSFzrDxdK1rnW1K9LGsT99OcWysgkY2GIQLBt
 1h74qCi26TjtQhQeNuFtv46OeLaSHWmJJTbjAM/tvkfEArHQ1iHbJ+4Z4O0hRf4dViFB
 JJq9BiE9VAMrxPbdZn+CYuQeF9MOa3f35sVK0bAnC0Sz6TyTcGipAlYC9iu6N9+UcEwx
 XLUXsy8ZuoFI3elyGLDJkfCr1Edv4F3HNDJJhgXFY09e0st4qXC9CQLcJ8JOdvjOXAgq
 ubvQ==
X-Gm-Message-State: APjAAAUopyxQ7nEgOiBbBx/X0G6G67nfmH/ZXnfmYLG8NnCF+Qjs2wjS
 Rn31O0+t+0j1za5cPb5eCu+c7WrKUpw9zjtZ59vo9Dvu
X-Google-Smtp-Source: APXvYqxaAPHLhuxZk4MZgvxEeRmsPUpBjqMp5p2m0Tmj39XLUqYOZMT9HvIrl7aTnzyNTIZx4Cg0AGdcAuoquaxzo80=
X-Received: by 2002:a92:bf10:: with SMTP id z16mr4386101ilh.87.1579890540913; 
 Fri, 24 Jan 2020 10:29:00 -0800 (PST)
MIME-Version: 1.0
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
 <82e1181a-b1ff-eccc-d61d-2da0e7afec25@opensynergy.com>
In-Reply-To: <82e1181a-b1ff-eccc-d61d-2da0e7afec25@opensynergy.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 24 Jan 2020 12:28:50 -0600
Message-ID: <CABb+yY3ZrzgH8q8Nz+VGjz9X9GOs+1_RxB7qgtyeLTZd8BR_0w@mail.gmail.com>
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
To: Peter Hilber <peter.hilber@opensynergy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_102902_484698_A88E6004 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 6:15 AM Peter Hilber
<peter.hilber@opensynergy.com> wrote:
....
>
> I would have preferred (to have an option) to use as data passing
> interface to the transport just the struct scmi_xfer. A transport using
> this option would not implement ops (read|write)32 and memcpy_(from|to).
> The transport would also not call scmi_tx_prepare(), but instead take
> data from struct scmi_xfer directly. The transport would use a modified
> scmi_rx_callback() to notify that it updated the struct scmi_xfer. A
> helper to derive the struct scmi_xfer * from the message header would be
> extracted from scmi_rx_callback(). The scmi_xfer_poll_done() would
> become an (optional) transport op.
>
+1
I have pointed out many times the SCMI needs to realize not every
transport layer can conform to its expectations, the scmi_xfer must
have some transport specific element to it. Or there would be
emulation/pretend modes implemented in controller drivers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
