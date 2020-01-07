Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98599132A3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 16:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRhyXF7ydvA0Z8M7eoKpmYS4ep2Qth09OuUHxndzObA=; b=dmPXLQ3cgn2XuX
	Jah4kjOQ6cr2iNR/4latsTGJfrH0bVWnnrRnqYjtxiV7k1J9FAu7FZ0F6APqg95zIFUiEF+wL7UeI
	Sai+LLzlX54IFTv3w+HaUsN4wiyVP070uZ6cbeSj/K9ZyLaQxtb+DOmmNxd4GnpndGPCRub+R/7w/
	JrEITBzhVLWaSVaIy5nxp9iaPqqp6I3FuXcdbtm/B0RR/TsAy/QN5CWwJNaczbqWrLossDzsor2wl
	tmwBpWvWCXvQG5cDLgHIW5KvBemfQz6LWHU+zwY3ksyzdT2WB0zkkBdML8LMDr9/qJFiAvB5Xi4we
	e+xcpfSxotT2CUcGiI8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ior03-00024T-QE; Tue, 07 Jan 2020 15:42:31 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioqzw-00023z-U3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 15:42:26 +0000
Received: by mail-pj1-x1041.google.com with SMTP id r67so9180018pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 07:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mOKAUWML1TFTWaJ7wVdgP8BJ4Cjz8s+9gtXGI6Ex/jk=;
 b=gSW7HO4pTdqJxlWVKCR6uhC6jdezVM9/xLJYNkDAbKHsfQnU2Bksu127W3XS1FH0NP
 MjGwlvOUDUOY7W8PL3RGhQt857tc2SA98S0w0pminHY6s4pVzjgXG8V9zF7Yb5LYOEgA
 +Ci7RaZfP4MSX9kP/OAoqqzMnsHIg0B3iyvQFrCOY7rvwAztaVkBadB34g7JBF1lWkzG
 Q+pqOxLIXkknIc9CP7QrVRtpK4N528gW6wV9ko9n8h8esaOebmAr8gu4VsFUiWAD+YJb
 pZmDkVkH2Uh5M7YAv6n4or5zr9KL04ETPHtqqi7wGwplDUS82kU6kOxZ+x9rEPdSE5yD
 DMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mOKAUWML1TFTWaJ7wVdgP8BJ4Cjz8s+9gtXGI6Ex/jk=;
 b=h16CuwaXhP03G5j5uhalU7t5c/BY+DqF/GFQVMYaulsa3nLbP0rc2TrBsfUgOIhUCF
 Amh09rzXzi+y3k2jIYOYuZZfHtHMRpsJYQd0Twhivj3c0wi0jKQ9zhRmI5RFX5JDBXPS
 P+kJ1lR6j08EbhpNvwldoXt/NIYybbzOj1CGqsEQaofTc2GpXaiPx5XTDsN2Z21tNWHG
 SC5o2EdZsiaOhSmuqlJPhdsVHB85O3EFYD95XfmN+JpQmpw/LV5c5nobuFQuulBXRABA
 uFRN9RSvEijtRWEgwA0v0NDW1sBpYthqQRWwygKihNEBZSwbZG++AH7Gmzk1AYjlbdXT
 fA5w==
X-Gm-Message-State: APjAAAVPJELZ5wdBMbCES37tMNQf8smiCJe/nx+NnkdXD8Z87HxK4k1A
 f3BlKMoAgJsWBHw1WKpMjyI=
X-Google-Smtp-Source: APXvYqzjYtn6/YzemGIzVUvI2cuoJB3lK2QEiULmrIBAz8zX6VTg45Sni+wFU8KjnZOEKfD9mOElDA==
X-Received: by 2002:a17:902:7209:: with SMTP id
 ba9mr289009plb.118.1578411744231; 
 Tue, 07 Jan 2020 07:42:24 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id v10sm141764pgk.24.2020.01.07.07.42.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 07:42:23 -0800 (PST)
Date: Tue, 7 Jan 2020 23:42:21 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH] Documentation: networking: device drivers: sync
 stmmac_mdio_bus_data info
Message-ID: <20200107154221.GA28873@nuc8i5>
References: <20200107150254.28604-1-zhengdejin5@gmail.com>
 <BN8PR12MB3266661B136050259B5F7FD7D33F0@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB3266661B136050259B5F7FD7D33F0@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_074224_988462_22752A69 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 03:16:10PM +0000, Jose Abreu wrote:
> From: Dejin Zheng <zhengdejin5@gmail.com>
> Date: Jan/07/2020, 15:02:54 (UTC+00:00)
> 
> > Recent changes in the stmmac driver, it removes the phy_reset hook
> > from struct stmmac_mdio_bus_data by commit <fead5b1b5838ba2>, and
> > add the member of needs_reset to struct stmmac_mdio_bus_data by
> > commit <1a981c0586c0387>.
> 
> This will file be no longer maitained as we are moving to RST format. 
> Please see [1].
> 
> [1] https://patchwork.ozlabs.org/project/netdev/list/?series=151601
>
Jose, Thanks for your notice, abandon this commit.

BR,
dejin

> ---
> Thanks,
> Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
