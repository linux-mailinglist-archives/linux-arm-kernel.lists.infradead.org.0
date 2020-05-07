Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3715D1C8C72
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYiXrgCXCyxyKIIW63dplWnGBlxFzP+Q5JtyXD71rIQ=; b=hkn6sm17cMT4Fd
	dJbbDDa+LEngu18tK7VRCNmi8VquGQ8jLWCqQsSBTKlK9k0Nd2YAK+Dqnlxjwurvo+FmX2PPeaSvP
	Ch4UlN6sXFtfxF6w2k7ICN5REOORUjtJyNa78bdX3DpJX9YcTJ6EdZvAuCZ7cTiDGCBNj/ilzlUVZ
	6MppFbglOVeKMd62IW9F4tIpdnHVo4mr94uITeqROCQpXi1gU4W6uJzP//8lvHtPVZyZ2iM9311fU
	PyDregm2FkOQSsBhsTBAi9OADimSv7rZvJhJZ1S2G2svaijDj5N8U3AgNOl2QtRcamZuUGjGC+qr8
	8L2n+ZIVacRp+d2o6K2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgfN-0008KJ-HC; Thu, 07 May 2020 13:34:21 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgfH-0008JV-1E
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r6eWlavmJYFaBTK6r09hetkA8pAPpK8I2TqwDeTM2JY=; b=zP/tWS3SdCBoj5Lh0SgOxCGgXx
 ghpwqWGrUjeN/zzDqNsQQ6KuGefokWV1EaFGrsXjvYiA2UfGipq633L0tD7ruCcxqJN22804AVigL
 TpAYp5Dvula+Xey3wO3E6/yHCpxasC6be+Cl044t+PB+eTkWMLFlINgCy0Agtd/eOcTk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jWgfC-001EFc-Fn; Thu, 07 May 2020 15:34:10 +0200
Date: Thu, 7 May 2020 15:34:10 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Diana Craciun <diana.craciun@oss.nxp.com>
Subject: Re: [PATCH v2 03/12] bus/fsl-mc: add support for 'driver_override'
 in the mc-bus
Message-ID: <20200507133410.GN208718@lunn.ch>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
 <20200507073431.2710-4-diana.craciun@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507073431.2710-4-diana.craciun@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_063415_072009_242FBD2D 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stuyoder@gmail.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-arm-kernel@lists.infradead.org,
 laurentiu.tudor@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 10:34:22AM +0300, Diana Craciun wrote:
> From: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> 
> This patch is required for vfio-fsl-mc meta driver to successfully bind
> layerscape container devices for device passthrough. This patch adds
> a mechanism to allow a layerscape device to specify a driver rather than
> a layerscape driver provide a device match.
> 
> Example to allow a device (dprc.1) to specifically bind
> with driver (vfio-fsl-mc):
>  - echo vfio-fsl-mc > /sys/bus/fsl-mc/devices/dprc.1/driver_override
>  - echo dprc.1 > /sys/bus/fsl-mc/drivers/fsl_mc_dprc/unbind
>  - echo dprc.1 > /sys/bus/fsl-mc/drivers/vfio-fsl-mc/bind

Hi Bharat, Diana

grep -r "/driver_override" Documentation 
Documentation/ABI/testing/sysfs-bus-rpmsg:What:		/sys/bus/rpmsg/devices/.../driver_override
Documentation/ABI/testing/sysfs-bus-pci:What:		/sys/bus/pci/devices/.../driver_override
Documentation/ABI/testing/sysfs-bus-platform:What:		/sys/bus/platform/devices/.../driver_override
Documentation/ABI/testing/sysfs-bus-css:What:		/sys/bus/css/devices/.../driver_override
Documentation/ABI/testing/sysfs-bus-vmbus:What:		/sys/bus/vmbus/devices/.../driver_override
Documentation/ABI/testing/sysfs-bus-amba:What:		/sys/bus/amba/devices/.../driver_override

Maybe it is time to move this into the core, and avoid yet another
implementation of driver_override_store() and driver_override_show()
functions etc.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
