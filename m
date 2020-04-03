Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEEB19D746
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zakfT37zLhAh3Koiu7F46scRx988AJcdDOQT/ICuHSo=; b=OeFmjLBqCFJFkn
	AWCNN5CnO6WPgrhFBNTLe/vHHqZlEqBwlTIU6tYOFhXQkxH8KZ1NzzHJwE6OkVpzVQikk7W5xJRRy
	Y4G9C4Fzo0zLXjxZnyVtXGgNB8iToBbrGkVT6BD0jcAkHjcS07s/2TUNCdr5JvL0KaTLdgwvhiOaB
	0m6jUq8+7oU/HCjgalwx4OYeAvzY1kAqKbjazm6lbBztGYzOme5u6jG/Yu18vjX48qM6aim3Pk2Xs
	rX6tRP+GGkbHqBgHy9eoBYdCuWEDFFzBIFS6C3hYhc7BQubDWaHhK1uq4F2rmQaw6gdGoH9lI1YqO
	HbjNCKICyGulmOBNak6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKM44-0001nF-UL; Fri, 03 Apr 2020 13:08:52 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKM3x-0001mN-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:08:47 +0000
Received: by mail-ot1-x342.google.com with SMTP id f52so7127717otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 06:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tU19EWZx8u2e2uV3dXR0FXwxIY/5U2XJW8CrROjNUIg=;
 b=fmq9EUdhdn++eKwVsAKvmtE6dEOtCu87AzVYsS8RdLDIW9lhNi2aEJOROLq/8YC0cp
 0NtDqpQaHOt02earYciLZFbMHdvr0oO3V04QvdXy8xdw5jfNZwJ5rCWYTGYEinHScC0b
 QB8YAgWxNnOWYx7UZw1/Vcp2HZ7xe8MlU3mY4egH5fsefs7+83mEZoF+87uWHAG8PASB
 6HPQCf64opNRU+9Pm7PJ1ulZVviDAVR2DvSb/2hB+xM2pqJ2/0yRYbQALF2JO9kd/UH+
 e+Qo4mr05Nu4mst9MWQVjXl94DWlXTSQ/5MNFErnwh7ht2gB6EKnTFdrMEvc9HFjVSrR
 O+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=tU19EWZx8u2e2uV3dXR0FXwxIY/5U2XJW8CrROjNUIg=;
 b=SP5G1l0qZvlo93+a0frQIf1aLAhqtXlnPZ1aWHEeQbRswYmPDaBcbfj+lk+rrhiGik
 dJ+MbdF7H7bV/auZ/TIw4vX8ozooulPCb5DpGs9xNL0SNf0Leu6UA9CfRIoK52dEADwj
 lN8n3jkTDI97SF7LOzCb3bUWrN6MZLp3zX2bBRqXIflHfBDQ6OTQe3t8iUgmbO9VTEAj
 NO+VRwzDKQywyvd3tjgaobOpVFG/cVinWpvVw9AFug1bxvCFC3SotlWHIQ8i/ThP+KWF
 cP1vjr4j4dnHokQoC91yEDA9K6w2zoEmzpkNCHs3sGTHEuPLIUaK4Q4doU7etMsLdhAE
 dmSQ==
X-Gm-Message-State: AGi0Pua5Zwor/CnzXsFw2DkLqIFzLIkqyRo6jH8PNijqCr/aT9+cZBTu
 pVfCvFH9ufX+gMQuG/hq/QKzidk=
X-Google-Smtp-Source: APiQypJOH5J7K90OLTvE4up+WlGYwk/WIHDu36NWekh7qDcyAQo4WCvI75rBiKzmy/uvySr5/C0L0A==
X-Received: by 2002:a9d:644:: with SMTP id 62mr5581256otn.177.1585919323801;
 Fri, 03 Apr 2020 06:08:43 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 12sm2192250oii.54.2020.04.03.06.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:08:42 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 0586B18016D;
 Fri,  3 Apr 2020 13:08:42 +0000 (UTC)
Date: Fri, 3 Apr 2020 08:08:40 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v2 0/3] ipmi: kcs-bmc: Rework bindings to clean up DT
 warnings
Message-ID: <20200403130840.GR2910@minyard.net>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
 <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_060845_924291_17996C5A 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Reply-To: minyard@acm.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 02:20:21PM +1030, Andrew Jeffery wrote:
> 
> 
> On Mon, 16 Dec 2019, at 12:57, Andrew Jeffery wrote:
> > Hello,
> > 
> > This is a short series reworking the devicetree binding and driver for the
> > ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
> > changes enable removal of more than 100 lines of warning output from dtc.
> > 
> > v1 can be found here:
> > 
> > https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/
> > 
> > v2 cleans up the commit message of 2/3 and changes the name of the property
> > governing the LPC IO address for the KCS devices.
> 
> Ping?

Sorry, I've been busy.  I've looked this over and it seems ok, and it's
in my next tree.

Thanks,

-corey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
