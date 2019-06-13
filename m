Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0671A44EF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uPefAMy5nP60FOHYeuO3wcfOZCX/RjjkLmS0pKAb4c=; b=eCpNg4XUdT8+2G
	GhwyO3vWDFXCFzh91TUgbSXNKbC578VdWxN2v3yeJCPlHgyNFoVvlDaiKQyBs3l0oHO5q6amYmwep
	gDhFfzj4sUY219cgfl0NTNVdbgYu7NcOZ/OVXTICiGpcWoGUlH0TcnO6LgtZHsQmD898/1B4I9Kf6
	PyzkIlUbdHQjXLjrUcg2QYArfzeJFfrjeclgB7YMZnoLx9CbBZLEUXjHVIUzpErlG9UQOaW3utSps
	h5ahjVDCx9tY7t6np6ZHDi/TfqU8Dbi6kmAhR2VQahi+O1gOYCVZ8efGmWIMJ5heGfBjID0rL/gQh
	aoVdosDKOE96FpX+Ik+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbXso-00067j-4Z; Thu, 13 Jun 2019 22:07:46 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXsa-00067D-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:07:33 +0000
Received: by mail-qk1-f193.google.com with SMTP id p144so406297qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BhWdQ+n9lb5V8igkIdjlDGkO+bOshDClHntzHo4xkx4=;
 b=M53E5QTfv/KDhoLEGZIejJiBDVdqOhBfVl784goGo1bNY4izTXWNTKtxAcGCYGmAlI
 K8P94qaUGPononGnzbjBu6/dVUnNsXNZTwZOgK6GZmvKNlPxxcQY+6K0Od/I6XIBQJz4
 aMbSVKSBQ27wv4hlxrh5Wf/6HJQxXDHDVebDO/PnMdG7m/UK/+Mg+h67w322NfcCdf5i
 D5r4OtfBLTgssJ/VjRH73PfS2hl4yHe777GFDzgdYrtgS4Ruw9QQDNgSjEaNJuhamAel
 JG+41KuXUPUzf2+MHaDq8TLAfTnPEYFzgY4Hxq7X0HE/5tb+jlO7LdMBwuTC60P/UWHR
 Vxeg==
X-Gm-Message-State: APjAAAVbaHD4bKF7sfGSODPtteR5xSpLgYdulUmKfD8vaqDH8JniSnn+
 fELu7yWL6w9ZZNpoJIUlNA==
X-Google-Smtp-Source: APXvYqzlg3l0HADoNTIkv5SXk7nuuzVo6Jw7oSlbsAolVM+MxEBgZazQrw5oWThYP2sbSY8L9PzBsg==
X-Received: by 2002:a37:6512:: with SMTP id z18mr73992402qkb.158.1560463650992; 
 Thu, 13 Jun 2019 15:07:30 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id t8sm708240qtc.80.2019.06.13.15.07.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:07:30 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:07:29 -0600
From: Rob Herring <robh@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH 2/3] Documentation: dt: binding: fsl: Add 'little-endian'
 and update Chassis define
Message-ID: <20190613220729.GA29761@bogus>
References: <20190517024748.15534-1-ran.wang_1@nxp.com>
 <20190517024748.15534-2-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517024748.15534-2-ran.wang_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_150732_233946_B0A9872C 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Pavel Machek <pavel@ucw.cz>, Ran Wang <ran.wang_1@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 10:47:47 +0800, Ran Wang wrote:
> By default, QorIQ SoC's RCPM register block is Big Endian. But
> there are some exceptions, such as LS1088A and LS2088A, are Little
> Endian. So add this optional property to help identify them.
> 
> Actually LS2021A and other Layerscapes won't totally follow Chassis
> 2.1, so separate them from powerpc SoC.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
>  Documentation/devicetree/bindings/soc/fsl/rcpm.txt |    8 +++++++-
>  1 files changed, 7 insertions(+), 1 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
