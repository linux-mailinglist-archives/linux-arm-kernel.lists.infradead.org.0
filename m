Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5AF9A0B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Za7NEeXT8a8iMIynNNiRbbNbDM4dqK5Tgid4VdDQ5u8=; b=gzcXHQPenZ6EiW
	nQnJOV48YjxvK4YaVJDD/LZ+btJm4eKWF0vIQX4PoY//bw49XpU18fW8YM4UT0lA8u6UrqERIXz4s
	7uiTMunTcRmdphXH40SCOmOrDkAg9FQeMqaCS2W+EJpUOzz5Nj3ZR0gIELpBJHybmvjbzsm/ue2tB
	cZZ7O60ncpASAKH0C40riTqtO742iI6G3PzlikGL0bYu6bssqMfLG67O11BU9jFkkP6/jlUK9Bjgw
	o1YCMc0ZJSa57hkDSNDmUrMFlzs4LIcNsDWuzk04HQfBMSp6B0bmMK5Pcg2DTmWzuCEGI2A2zL1II
	H67OcZaosBZ3zT5AkiIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tKl-0003Vs-1w; Thu, 22 Aug 2019 20:05:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tKW-0003SH-0E
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:05:10 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A66DE10C696E;
 Thu, 22 Aug 2019 20:05:07 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A737C1001947;
 Thu, 22 Aug 2019 20:05:06 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:05:04 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 09/18] gcc-plugins: objtool: Add plugin to detect switch
 table on arm64
Message-ID: <20190822200504.x4unrhw36buwvdmg@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-10-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-10-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 22 Aug 2019 20:05:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_130508_069757_2114CE51 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:23:54PM +0100, Raphael Gault wrote:
> This plugins comes into play before the final 2 RTL passes of GCC and

"plugin"

> detects switch-tables that are to be outputed in the ELF and writes
> information in an "objtool_data" section which will be used by objtool.

The section should probably have a ".discard" prefix
(.discard.objtool_data) so it gets discarded at link time.

Also, "objtool_data" is a bit generic.  How about
".discard.switch_tables" or something.

> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  scripts/Makefile.gcc-plugins                  |  2 +
>  scripts/gcc-plugins/Kconfig                   |  9 +++
>  .../arm64_switch_table_detection_plugin.c     | 58 +++++++++++++++++++
>  3 files changed, 69 insertions(+)
>  create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
> 
> diff --git a/scripts/Makefile.gcc-plugins b/scripts/Makefile.gcc-plugins
> index 5f7df50cfe7a..a56736df9dc2 100644
> --- a/scripts/Makefile.gcc-plugins
> +++ b/scripts/Makefile.gcc-plugins
> @@ -44,6 +44,8 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
>  endif
>  export DISABLE_ARM_SSP_PER_TASK_PLUGIN
>  
> +gcc-plugin-$(CONFIG_GCC_PLUGIN_SWITCH_TABLES)	+= arm64_switch_table_detection_plugin.so
> +
>  # All the plugin CFLAGS are collected here in case a build target needs to
>  # filter them out of the KBUILD_CFLAGS.
>  GCC_PLUGINS_CFLAGS := $(strip $(addprefix -fplugin=$(objtree)/scripts/gcc-plugins/, $(gcc-plugin-y)) $(gcc-plugin-cflags-y))
> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
> index d33de0b9f4f5..1daeffb55dce 100644
> --- a/scripts/gcc-plugins/Kconfig
> +++ b/scripts/gcc-plugins/Kconfig
> @@ -113,4 +113,13 @@ config GCC_PLUGIN_ARM_SSP_PER_TASK
>  	bool
>  	depends on GCC_PLUGINS && ARM
>  
> +config GCC_PLUGIN_SWITCH_TABLES
> +	bool "GCC Plugin: Identify switch tables at compile time"
> +	default y
> +	depends on STACK_VALIDATION && ARM64
> +	help
> +	  Plugin to identify switch tables generated at compile time and store
> +	  them in a .objtool_data section. Objtool will then use that section
> +	  to analyse the different execution path of the switch table.

This isn't something you want to ask the user about, as objtool for
arm64 requires it.  For the same reason, instead of
GCC_PLUGIN_SWITCH_TABLES depending on STACK_VALIDATION, arm64
HAVE_STACK_VALIDATION should depend on GCC_PLUGIN_SWITCH_TABLES.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
