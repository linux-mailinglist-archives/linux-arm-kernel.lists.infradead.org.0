Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7649D10B90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6ZuGyuJD9Ii8P4jPqSioShZmCI9VLB3noWSV5P/ZtE=; b=WVe10sxQ1QtpO1
	1bKlSC/FWXJzECIRgE7DkglYOwhuZUUGD2Aq3mjVjhxCu50WCURSvEshLsNWqTytfpxeOQJR683Of
	ws6lwlBQvqyp6vPXRN3jxnSYFJ4vQw8WZQ0tVzBvJwskob1yG0XlZgB1lUyc5vyejvZwfk9Or+Wub
	OFKYxRktcN1QFUsoO0DFVPfjxS8t+MjF+99+cd9dH24xQNXk6k9R0daNiypSReMfFC+UQv9u8LJOv
	JX01hMDEPHl+47IVgoZGTT1gYOvwAdXwmiT7CTA3O9msfIFNlQbTz1/FASsExRN/fOla+fyKQ8Y6A
	qw2WsYA42EfgSBD4LakA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsPe-0004H5-92; Wed, 01 May 2019 16:48:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsPW-000495-DT
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:48:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id x15so8421952pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 09:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a82ckZo73SGxA8ey3aK0omtfrwDTACIRQAmbz4zxBz8=;
 b=DZAZlVyv2Zj8QW2ZVaA4F2WxBgm+TYZTAM4t/5EOeChgCJ7BD4Ft2Dzmnf3x6+ydz1
 XakRftqblAOckP3MeN3ccDznp09ppAFe871YQDxI1Qj+FuNPuoY1ouHhz5kI+3ZQ3PV3
 /L68VP9/OZfwUxqTI2ADGPFduqoKJR0cQ/ilRG4LirfK9AWJ1nlO4sVAtoc4jAZjVELX
 dwxVevKkDwYvFLwv52/XqZAeyBzWSZ5CO4uvi+nyaZGWjFQjY/27kRLDK4iQOVPv1bS3
 pYU7oLCM3TjBP/5voYoXBOCWgkWx+/gNSfwEsWL5ioDvofaSRT3AzcJ5BrlWCeZEJ+vp
 9TMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=a82ckZo73SGxA8ey3aK0omtfrwDTACIRQAmbz4zxBz8=;
 b=PFrFqjTh6rVNWxqsKbL+hSewW/xHgO2EqqbssD1u0L7uky4irj7irokUOYbUD0B0Mr
 OvkFH09Fs4bcGfcyd549Xfiy24W1xeD8i5hW0M+fkjtMBF5u+lZHht5mOWbE4HVHi+hT
 wN6OAVmQGPk8fV9V0E3EgMRs2V1xNfmq+5tdc7p8yIO4Zg0bjXNTrZQ0M2c4Ep911DRG
 SPsKS+f+s8RqRwKi5/WE5LYBT+OHIb6ZrLOED3ekbXM6c7CeuHhl40PNerkLJmIHrgX9
 WlpVlmypDHjuEXfUc94CBx1/TPHl+qkdWjGKgR0/CPeBKtLJDOikPCsoW32kbi8KWvI9
 9oYw==
X-Gm-Message-State: APjAAAX7vz/mxWJR2u4rsqdytqNCHfgomZWgUw2AUf6Yrya9QkOtR4FF
 xBXUQtQX/QKCuCqVR9WDxNA=
X-Google-Smtp-Source: APXvYqxW8qIcb4HhSImxk+i+ozqc55UYdRTl9MHwDSKvhigyPhTtplKP1yE1tqeQ0DpYt8I1Y+S+aA==
X-Received: by 2002:a17:902:163:: with SMTP id
 90mr79079707plb.34.1556729325186; 
 Wed, 01 May 2019 09:48:45 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id r76sm62426017pfa.39.2019.05.01.09.48.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 09:48:44 -0700 (PDT)
Date: Wed, 1 May 2019 09:48:43 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 1/6] thermal: Introduce
 devm_thermal_of_cooling_device_register
Message-ID: <20190501164843.GA16333@roeck-us.net>
References: <1555617500-10862-1-git-send-email-linux@roeck-us.net>
 <1555617500-10862-2-git-send-email-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555617500-10862-2-git-send-email-linux@roeck-us.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_094846_458857_E8C27BAE 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jean Delvare <jdelvare@suse.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Nancy Yuen <yuenn@google.com>, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kamil Debski <kamil@wypas.org>, Tali Perry <tali.perry1@gmail.com>,
 Eduardo Valentin <edubezval@gmail.com>, Avi Fishman <avifishman70@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Zhang Rui <rui.zhang@intel.com>, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 12:58:15PM -0700, Guenter Roeck wrote:
> thermal_of_cooling_device_register() and thermal_cooling_device_register()
> are typically called from driver probe functions, and
> thermal_cooling_device_unregister() is called from remove functions. This
> makes both a perfect candidate for device managed functions.
> 
> Introduce devm_thermal_of_cooling_device_register(). This function can
> also be used to replace thermal_cooling_device_register() by passing a NULL
> pointer as device node. The new function requires both struct device *
> and struct device_node * as parameters since the struct device_node *
> parameter is not always identical to dev->of_node.
> 
> Don't introduce a device managed remove function since it is not needed
> at this point.
> 

Any feedback / thoughts / comments ?

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
