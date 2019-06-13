Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8558C43201
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 02:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaSI2DvnVHao1TSuJ8O+3vaY7Rbzz5GhuXRcUk74KNo=; b=uLQyTS7xbkmHPE
	/KxTkkbazSl++ESPHLXzdsUuHT8hD8boirqLTF0QEKupoJO3b5hJnTSmLVF83tp8a+ps9cZfDv+1M
	nhrPGqiVHVP4VY57XZ/HdFRcW1MuNSw73qCi5qjjS3Bb2D9gXfMBNhZzYFC4XuxSoJT/U3hkrAbSo
	HP6Gd11u2C/yomlatDnrWHiXYSNwqGPDFf2TQmZ5S7IQrUcvXyqqoBXWtN2lvDOIjtt6O0ewwc1rV
	DLe0TnxWorMVAxgofAYmuvhwi8Stt4QynAtVJpFuBgXcl/p/36mGLP/2IpywL8Gt6vS42iK4WUT77
	l90S8j36QUZkSwww6wNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbDZZ-0005rO-Hn; Thu, 13 Jun 2019 00:26:33 +0000
Received: from outgoing-stata.csail.mit.edu ([128.30.2.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbDZK-0005qK-4x
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 00:26:19 +0000
Received: from [4.30.142.84] (helo=srivatsab-a01.vmware.com)
 by outgoing-stata.csail.mit.edu with esmtpsa (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.82) (envelope-from <srivatsa@csail.mit.edu>)
 id 1hbDYq-000Xfo-J5; Wed, 12 Jun 2019 20:25:48 -0400
Subject: Re: [PATCH v4 18/28] docs: convert docs to ReST and rename to *.rst
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <fac44e1fbab5ea755a93601a4fdfa34fcc57ae9e.1560361364.git.mchehab+samsung@kernel.org>
From: "Srivatsa S. Bhat" <srivatsa@csail.mit.edu>
Message-ID: <7dc94cb4-ebf1-22ab-29c9-fcb2b875a9ac@csail.mit.edu>
Date: Wed, 12 Jun 2019 17:25:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <fac44e1fbab5ea755a93601a4fdfa34fcc57ae9e.1560361364.git.mchehab+samsung@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_172618_271860_9E80FACE 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.30.2.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nishanth Menon <nm@ti.com>, linux-wireless@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Sebastian Reichel <sre@kernel.org>,
 Harry Wei <harryxiyou@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "H. Peter Anvin" <hpa@zytor.com>, Alex Shi <alex.shi@linux.alibaba.com>,
 Jonathan Corbet <corbet@lwn.net>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 Len Brown <len.brown@intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/19 10:52 AM, Mauro Carvalho Chehab wrote:
> Convert the PM documents to ReST, in order to allow them to
> build with Sphinx.
> 
> The conversion is actually:
>   - add blank lines and identation in order to identify paragraphs;
>   - fix tables markups;
>   - add some lists markups;
>   - mark literal blocks;
>   - adjust title markups.
> 
> At its new index.rst, let's add a :orphan: while this is not linked to
> the main index.rst file, in order to avoid build warnings.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> Acked-by: Mark Brown <broonie@kernel.org>
> ---

[...]

> diff --git a/Documentation/power/suspend-and-cpuhotplug.txt b/Documentation/power/suspend-and-cpuhotplug.rst
> similarity index 90%
> rename from Documentation/power/suspend-and-cpuhotplug.txt
> rename to Documentation/power/suspend-and-cpuhotplug.rst
> index a8751b8df10e..9df664f5423a 100644
> --- a/Documentation/power/suspend-and-cpuhotplug.txt
> +++ b/Documentation/power/suspend-and-cpuhotplug.rst
> @@ -1,10 +1,15 @@
> +====================================================================
>  Interaction of Suspend code (S3) with the CPU hotplug infrastructure
> +====================================================================
>  
> -     (C) 2011 - 2014 Srivatsa S. Bhat <srivatsa.bhat@linux.vnet.ibm.com>
> +(C) 2011 - 2014 Srivatsa S. Bhat <srivatsa.bhat@linux.vnet.ibm.com>
>  
>  
> -I. How does the regular CPU hotplug code differ from how the Suspend-to-RAM
> -   infrastructure uses it internally? And where do they share common code?
> +I. Differences between CPU hotplug and Suspend-to-RAM
> +======================================================
> +
> +How does the regular CPU hotplug code differ from how the Suspend-to-RAM
> +infrastructure uses it internally? And where do they share common code?
>  
>  Well, a picture is worth a thousand words... So ASCII art follows :-)
>  

[...]

> @@ -101,7 +108,7 @@ execution during resume):
>  
>  It is to be noted here that the system_transition_mutex lock is acquired at the very
>  beginning, when we are just starting out to suspend, and then released only
> -after the entire cycle is complete (i.e., suspend + resume).
> +after the entire cycle is complete (i.e., suspend + resume)::
>  

I think that should be a period, not a colon, because it is clarifying
the text above it (as opposed to referring to the example below it).

Other than that, for suspend-and-cpuhotplug.txt:

Acked-by: Srivatsa S. Bhat (VMware) <srivatsa@csail.mit.edu>
 
Regards,
Srivatsa
VMware Photon OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
