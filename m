Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11A41DC171
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5n6M1nxsO1ryCi3ER2dGuyyD104BT+tRHju5zVLCJE=; b=tzHUM2A91fkhTh
	nSaiomqsnTg0lpnOv+WemSstMAt8Txnr8biGmH/83NNW3p0RAoZDBZCSFdx9l2QvtBT2XaMbtoGEA
	wu71tOp/AVs345Q3sTleXAgHy4odD0VNQ1bfimdWwUvqZkl0vpSMX7oh0Evl9YA6etGYJXewm17yd
	LliLEEoTVIN68TfnBepyGUgwTWUuxwfj34wFgWCljNx69OAlCE2vU4VgapHxp7DmEudWMINEn4IMm
	yDgEy16nlVGc5gdZCWEgS9XJH2ngpQOOOWPcNchdz4EYhqCUQthP8eJQa8Y3f9vHOACYRHjRkcHdL
	abAvAYQggJE4wzsxhQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWMR-0004bs-38; Wed, 20 May 2020 21:34:47 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWMI-0004ay-Pp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:34:40 +0000
Received: by mail-il1-f196.google.com with SMTP id a14so4892380ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2/eHyYzBahdn3qW8t/qbKdgzArvvt9PLcDPFzWfN7iw=;
 b=R0QZYdrGFnRseuEWQmEFmZpvHL30gg0gE9R/bsHabBIy5Yw72p+rxOSLtx6W1jcw8t
 OnHncpJPRUdjnYRuCFCravEsqGoolTJC1fUrSySB7//FHYouLRqWIZAH2XZchXUnXIgy
 4wsCz68X2QCF/N3nlp8n5x9VNxBp0tCBd/iYNKmuMFpzCRAQpPOqDeph6HoFluWXhbzp
 8vouH94Dg8UhTqMIsVShhRcdaMdsyjPIKE5STz9gD5gRhY40O+vaFMzTM/9ThpZ0YDjJ
 Gs9j9a17CrVV3H3b0MiAF7C1qlm3dPRVViD92TpTi3Ax/09R4OJMviOOvRj9y5K3e3YJ
 UCyg==
X-Gm-Message-State: AOAM532s/0sNX4j+ju8su2sgwyYoH/8wGr6Efwtuker2DarZAb65Rhju
 i9LbBpHM1bAdUyqW5nRlUw==
X-Google-Smtp-Source: ABdhPJzKftdjlLVMTI+ImBLO4uTp+xrXfJIyzLp9JRWBEvw9KfywvQPPZEg7GO8i9fwFyIbrHDhAZA==
X-Received: by 2002:a05:6e02:92d:: with SMTP id
 o13mr5836790ilt.142.1590010477107; 
 Wed, 20 May 2020 14:34:37 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id a20sm1642056iot.17.2020.05.20.14.34.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 14:34:36 -0700 (PDT)
Received: (nullmailer pid 633250 invoked by uid 1000);
 Wed, 20 May 2020 21:34:35 -0000
Date: Wed, 20 May 2020 15:34:34 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 07/14] PCI: cadence: Add new *ops* for CPU addr fixup
Message-ID: <20200520213434.GA583923@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-8-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-8-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_143438_837565_4D7B5B84 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 08:44:22PM +0530, Kishon Vijay Abraham I wrote:
> Cadence driver uses "mem" memory resource to obtain the offset of
> configuration space address region, memory space address region and
> message space address region. The obtained offset is used to program
> the Address Translation Unit (ATU). However certain platforms like TI's
> J721E SoC require the absolute address to be programmed in the ATU and not
> just the offset.

Once again, Cadence host binding is broken (or at least the example is). 
The 'mem' region shouldn't even exist. It is overlapping the config 
space and 'ranges':

            reg = <0x0 0xfb000000  0x0 0x01000000>,
                  <0x0 0x41000000  0x0 0x00001000>,
                  <0x0 0x40000000  0x0 0x04000000>;
            reg-names = "reg", "cfg", "mem";

            ranges = <0x02000000 0x0 0x42000000  0x0 0x42000000  0x0 0x1000000>,
                     <0x01000000 0x0 0x43000000  0x0 0x43000000  0x0 0x0010000>;


16M of registers looks a bit odd. I guess it doesn't matter 
unless you have a 32-bit platform and care about your virtual 
space. Probably should have been 3 regions for LM, RP, and AT looking 
at the driver.

Whatever outbound address translation you need should be based on 
'ranges'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
