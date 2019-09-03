Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F65A6964
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fPIyZgrRzTjrzgfDB0MOI61fGWkijNwzTwrZiXjkno=; b=Ma0HB75RSvkI27
	PQ23HK37eAscJ1H/4ss/VSfEuxJykcTwc6qPcltMOYuM5nawJa30IV7ABEzW37ellASb45EOQJwsz
	IcjpCLzJuTj5uB9Gm7I3v62snxVLsbnJzlHjrJGsqrGcs22lLlqwRiLHdOzKvdmCsJs5Iorm3+2uL
	qMivTdMnAb3buZbUZHLb3MkA62Fr2tMZqWITHM5PmF0Hj9RzCm571vJKPqprCNKsn6Wp3w+igR7D9
	89sOFxnAERT5RumTta7jFQkRNEiEX5HvBfGhSSbnYD20hDVdAbxXMk1abRWwTUGoGdiOIYruZonGP
	m2GKuq6iwuB8RHJKfXyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58b6-0006y8-Hi; Tue, 03 Sep 2019 13:11:48 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58av-0006xq-CA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:11:38 +0000
Received: by mail-qk1-f194.google.com with SMTP id f13so15773677qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lWKXEn5/VBnpWMpIB0P9AihIFhnjIKfoZ66TOfXAEjE=;
 b=s61A56FiqEnjtstwVzSmwJHspL+egRvWoNSYZ62yDLGfFiXBwdEgRJl7lTf8P1PSrh
 HZU+DgFxr8eo/0yhizj6Gz8sBELktx6WKqRY6k1nUvKzR4+uACm3HMH5wbyI2xFHWHfK
 9FEo0a4mnLiDRVDpoNJduN2yak1nz61YWqgLZtxQ+dd5Rjk96HIo+AFDtcymmJtHcJ9d
 fu/IN+eYu3LvLI3+zwBVyIfpQ/yzqzpIp+U1Wsrc7st0SQww0fl4P7H8KMR6AcaqDaG8
 SpfKu0zprIaLItzIa5PKtUVBUrFDs4qOHvrkSGu374L73ckY8VwKNbbQg8EfhO7GKgr8
 eHMg==
X-Gm-Message-State: APjAAAV74Za9V2ikZ0Jarqx8RMqvFf6KnVzjquzt4Abdyl+ZSXBUYkgG
 +Y7tRy/moyzhWPzMUHLUci25IE0fiJ4KPR2b13A=
X-Google-Smtp-Source: APXvYqw7h1G+SOE4LhpNs37qy+LMuHad4MH3x/En06Kwc3oAMWlUap/kkD/ODJbdtzlsIFFUPYfbWynuJiLEqYsid7s=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr34222066qki.352.1567516296538; 
 Tue, 03 Sep 2019 06:11:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819141659.26414-1-dinguyen@kernel.org>
In-Reply-To: <20190819141659.26414-1-dinguyen@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:11:20 +0200
Message-ID: <CAK8P3a0CSOFKuZghicVoB4gt8ADe+PKLwv=qnCMkb0ne4SAXMA@mail.gmail.com>
Subject: Re: [GIT PULL 1/2] SoCFPGA DTS updates for v5.4
To: Dinh Nguyen <dinguyen@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_061137_416999_FDA63094 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 4:17 PM Dinh Nguyen <dinguyen@kernel.org> wrote:
> SoCFPGA DTS updates for v5.4
> - Add reset properties for various peripherals
>         - QSPI OCP and DMA on Arria10
>         - DMA on Agilex/Stratix10
> - Update NAND controller bindings to match driver update
> - Add NAND controller to Stratix10
> - VINING FPGA board fixups
>         - Update button mapping
>         - Adjust GMAC1 clock and TXD skew settings
> - Add missing reset-names for dma controller
>


Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
