Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060C3127810
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgJr4n8tyiHB/cHtI0kUoDvvKd786KS8GjruDEElefI=; b=RdXCCaLdoDcjGE
	ktaq8HcVvCci+onvNFN2URkvFb8Yenm0QHCNeADJ088DO1ncOFutCLJdgNJ/ltvW85v8Dt2JpST2c
	9QObw4vifOPi9Y1OhDXHs21UL8+QzVtowKQod738fYLQmtWTU328dlD7AqwsBf6JNbGb/GfbLAimm
	ZiBo+HhZwcIP1eTADyUEx6VFIiqYFYb36MO2h90598bbDaAxlESILxN6VXMlLmWZo5RgIkXdx+zds
	foyAmDAd1356b3OZIaa4duvEPj5PVGl60SS+UM8qHi5P7K4Eakqk5N8HfjWrzLS1oGThcNgPvBzD5
	INpf2uzBZcawPMkJYn+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEXI-0006Ut-34; Fri, 20 Dec 2019 09:25:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEX8-0006Tn-TE
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:25:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id r21so7601946edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 01:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iW+E0xO4cl6Le/pRNkxzyx+ZKt3kccSYLfBkkXeukuc=;
 b=t3WLxxKLD6EyG4OWlTU0Yqy9yEt2NHUh7m7Tfcpbw7RONe59MDpw+50lv3mxZSKIJL
 hFXjbe+NYTJdx7GcAuoatJSZY6X5abT1JOdQPSeCEWlcoXlPh1GUie/idKjswhEvESx4
 LudnV3hZPi1nHjK0Pygnfvj9sb2j3V+bABKTAdFKhIum99YT5vZFibC8tW9eKaYW3A4h
 pgvFSXzcg+g2EtDOFqVXlRazJ6JaX4nhwfbzZzO15sroSIjpOonciRFrLQcir6bPE3nI
 DB3+AKlgjZbWm3Ld/YyVjTquc/MY3eOKrd+Koz6IQCvapMSLU7NlAMNZuxlNS4IyYGpJ
 +8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iW+E0xO4cl6Le/pRNkxzyx+ZKt3kccSYLfBkkXeukuc=;
 b=lW5aLNq6wNZcFrmo7HlsuAuM5js/0oVSvzX9PPOXwe72NWSa5NDRQG5LVPjp+/c7mg
 8PB9VoaArrAqx58eW8JSNSVMRYOajZxVPARelMfTi+98mS0E7xefuvby83V5EPcSiuKD
 eBAQ3VfXkGpohxBU/AYeQOCagB1D6VJ7jliRui68Q77AcmaCXcxN//5UFEkbmhobT2jP
 6BfBYhgtXxTPYHLTfGvdUNbC2eF0wttz1ixCWrncp2t32t0VJy/aryd/bJo63IFPrINM
 Lv+ZPO1ugcZ2Oplz5guw6LTOwm9W6DMdI4DlIAJdniUdHMHKSpe/vdB6F3Ho4OE4odqE
 26bw==
X-Gm-Message-State: APjAAAWVaPymWGGuEa9w7JhpcvqzkhwD6B3ViatYU93iwfRULTydLaFa
 OEyZYYkRWYpPR/s71gb6+mssQqHgLuZt6RhAeZI=
X-Google-Smtp-Source: APXvYqy/qbLAr14kvPkMt9+niEqKtVDn0hoTqq90t+dQcT6zO67x9oZ4UOtDOv+a63LpLJonq1R9Evt6oB3TgV3dC10=
X-Received: by 2002:a05:6402:12d1:: with SMTP id
 k17mr14587034edx.291.1576833917042; 
 Fri, 20 Dec 2019 01:25:17 -0800 (PST)
MIME-Version: 1.0
References: <20191219124120.53754-1-radu_nicolae.pirea@upb.ro>
 <20191219130501.GA958@kunai>
 <6504123809effc310ade02dbb8a63f10db6b6c92.camel@upb.ro>
In-Reply-To: <6504123809effc310ade02dbb8a63f10db6b6c92.camel@upb.ro>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Fri, 20 Dec 2019 14:55:05 +0530
Message-ID: <CAKfKVtFqbtovQGQuzgCYzTu4bHOmAOmTz-tZMD89iUkMPc8awA@mail.gmail.com>
Subject: Re: [PATCH] i2c: cadence: Added slave support
To: Radu Pirea <radu_nicolae.pirea@upb.ro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_012518_972428_D0149306 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chirag Parekh <chirag.parekh@xilinx.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ,

On Thu, Dec 19, 2019 at 7:00 PM Radu Pirea <radu_nicolae.pirea@upb.ro> wrote:
>
> On Thu, 2019-12-19 at 14:05 +0100, Wolfram Sang wrote:
> > > +/**
> > > + * enum cdns_i2c_mode - I2C Controller current operating mode
> > > + *
> > > + * @CDNS_I2C_MODE_SLAVE:       I2C controller operating in slave
> > > mode
> > > + * @CDNS_I2C_MODE_MASTER:      I2C Controller operating in master
> > > mode
> > > + */
> >
> > Can't the hardware operate as master and slave at the same time?
> >
>
> Of course, it can. If the driver has a slave registered wait and
> listens and if the subsystem needs to use the controller as master, the
> driver changes the state of the controller to master, sends and reads
> data from the bus and after this change the state of the controller to
> slave.

However that should be done only if no master is talking to the slave right?

> In cdns_i2c_master_xfer is done all the magic.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
