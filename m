Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBF81A886E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8N1pQStj/24515mODLXgrcCHOzLVLv+JX3/rSwl80s=; b=lSYZ1D5xaemNkX
	n8jNcW2ZdHoNimCUyTMRVFtjlRohbQSweQEmcTyXrMZiwWxETucR/vWGxFMzWvQHtw3JwnMecVLvk
	nCcJV8UZmJqnCWuA9f/4KS2Aj30FeyYyTsJjuK08mBP6Pq58BiZyY2q9CI8QHYWYatzh6GrvJo+u9
	zdoV1nGourv9ef2mx+Z2T5W8E0/sc6YESMQWmeFbahQG1cFJjOoXmlMRAFkdZ3sKe4bD0F7wc4Jiz
	H5MznXMiyJqnJjMYdXhU2KXuQ0QiXz3eX1TerJP/JGkkh+OJuaFZBw/P9tcDjBhJIt7emQ8GyXZzp
	UlEPVptNQ/843RRN9Trw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPup-0004Xp-6D; Tue, 14 Apr 2020 18:04:07 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPsT-0002VV-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:01:43 +0000
Received: by mail-ot1-f68.google.com with SMTP id l21so545910otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 11:01:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bilYsvZAPOBeLR5infdzzosnMgLyQCA6aquQk0OK3DQ=;
 b=LyPBUG4hmvf2hq2ic2HgrQ391/hDduw4N6eJSwHiHM/275LPrV1Hg8eQv3tEj/yFc1
 IotI0dizm7F8KFDGSeG4cKnYHcGhysUb5RLZUELK6ayE1KSarBcCg2ljQe32WKjYRzTS
 BISpqeUuBCKhS3edY/D/arQjpZmn+mq7WLJxRP5YHclUmEYQa8es0KpFGPy+0FshYtMX
 6NF0rx14FkQm7EwHLc3yi5wZ81SS62/qGYQv+wJoBXP66Wa+ZQdny10XdmU0tF4XiVSW
 qzJaiDjVfVvb6H/1g8yI/2AHfv2mCaN6xGn9R/iUk7dM/+b8ZUDm9IBdXBxQe+02iVY1
 3CRw==
X-Gm-Message-State: AGi0PuZs/z38TOB9CxaGKaf/QvQH0mJ4V2cpa7jxerUn9pdqJKY/0AbO
 m7/u4NFU8o1r+aZkqSwpMA==
X-Google-Smtp-Source: APiQypIyeT6xZf0FyX/A4PwaP/ZCpTja6l9L2zgL1zqqCWt/vp9DiITDaZcngdai2PZwvxJRbfN1Ag==
X-Received: by 2002:a9d:12c4:: with SMTP id g62mr814625otg.164.1586887299735; 
 Tue, 14 Apr 2020 11:01:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h11sm6288667ooj.17.2020.04.14.11.01.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:01:39 -0700 (PDT)
Received: (nullmailer pid 11421 invoked by uid 1000);
 Tue, 14 Apr 2020 18:01:37 -0000
Date: Tue, 14 Apr 2020 13:01:37 -0500
From: Rob Herring <robh@kernel.org>
To: Christophe ROULLIER <christophe.roullier@st.com>
Subject: Re: [PATCH V2 0/2] Convert stm32 dwmac to DT schema
Message-ID: <20200414180137.GA4816@bogus>
References: <20200403140415.29641-1-christophe.roullier@st.com>
 <20200403.161414.635525483978443770.davem@davemloft.net>
 <df446a1a-c651-caa9-6086-9d84b11f3159@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df446a1a-c651-caa9-6086-9d84b11f3159@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110141_491541_BF22B8F4 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "alexandru.ardelean@analog.com" <alexandru.ardelean@analog.com>,
 David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:11:03PM +0000, Christophe ROULLIER wrote:
> Hi,
> 
> Gentle reminder

If it is in DT patchwork, you can see where you are in the queue. Feel 
free to review patches in front of you for faster response. :)

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
