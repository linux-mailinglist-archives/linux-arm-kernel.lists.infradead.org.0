Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410EED7D73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JK3lMUhZ76WRzo4ZEvyB7vBSX6d8DUT+qhKNdEr2uY=; b=p52uE+bwvoLsUB
	vm4dPsG43xn7n5CMVAaotDXcK18EFMGAZEbFOdKKjLdMDV7lnk0FZ754dqHz8A1ES8vsgdCuwkTkY
	herzLz+hCZIHY14rWuOaldFfZbcC7PYA0zs7ZV/9JCfyCV/OrYwBlyyEG3Ork4VN2PviYN4VIxP1Y
	b/hyIf++iivbct3tru3RYdTauXiwZkzGnm2FR1qHA2SP4pXFPmIPmU574YCGPpPG8H94cI6rqbnpm
	sSJZf5T0TZ09Fpcl0zBKDGAyhfXlWFuhRHNvhM9jsZmbZh3bPaL/bOLCYtF+M37NSoWU1GRKvYs7O
	PLzWQ2/K5Ohm5aK/XWOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQWi-0000hO-N4; Tue, 15 Oct 2019 17:22:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQWX-0000gq-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:22:18 +0000
Received: by mail-ot1-f65.google.com with SMTP id 89so17607703oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:22:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jbHpx7XPETlJ9vzemeHjD6QE7tFzcrH2Jm0Y5GaVUsE=;
 b=e8gMgUGYLWTrQbkbL9s4tq7OphGbKAgSRZ+y2E1tzMIgTHm+9xq5QWOdVjsfcx1MOW
 0NPzS/MCxc2w77Z+pOU0hOX8B3ipnhTev661a9485UUG0RvWUnP/NC6yMwXZqPqnW8ME
 2LI80lJFgS0fVcwoEiBmhe+KV1Rr4LPYSyOkH6XWEfA5FdIhIhmcD+IHJSrURP8EJyzJ
 KDFErd9lB2TZ0JSsHqQH1Wgfs1ggkgy4ak1eeSd9GBdJ1cbl1sDjvDsJ38O+LEeGsCBK
 gRfFBXtXeLbaez9QR7vcJDguZhJ8pxYbadJWgYXipGPA8sNvFlH5gTa9ilNFk+UWaXn7
 b7uw==
X-Gm-Message-State: APjAAAXhVizPqHUHcuH5OR9s+54SKob/hPFX+skMItd2lBDVHYVNV1TT
 LcoKfKJVfD0jWpwlFuxkwA==
X-Google-Smtp-Source: APXvYqwPKZrxBjDVG/uILAEhdydbS48WivhzBHRDzrcYQxF0oufQKLAlBVKJ72NlODmOQyjYCQPneg==
X-Received: by 2002:a05:6830:1188:: with SMTP id
 u8mr26388246otq.190.1571160136331; 
 Tue, 15 Oct 2019 10:22:16 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s1sm6446834otd.49.2019.10.15.10.22.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:22:15 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:22:15 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: stm32: Fix 'st,syscfg'
 description field
Message-ID: <20191015172215.GA30472@bogus>
References: <20191007134410.10337-1-alexandre.torgue@st.com>
 <20191007134410.10337-3-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007134410.10337-3-alexandre.torgue@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102217_129333_2C3AF533 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 15:44:09 +0200, Alexandre Torgue wrote:
> As there is only one item "st,syscfg" this commit moves phandle description
> fields under "description" tag. It'll fix a validation issue seen  during
> stm32 DT check.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
