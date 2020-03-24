Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D107B1916D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6Oc0s5qEt/3in2Cso8h3HN70At2cNp0VHsDHPV7tOU=; b=PGNI1mi7vWJXOm
	jSZBGcaBx224C9B6376ja+4WIpjuwWUvg2JKeAXrAQWtpO8oSL6wVXJULZZccf5rpzELPgfir4n8E
	j8XGLvtMA559jTlgmh0oKAPfJpMQevUGDK88cyT2Zw2TKVU6xL6BU+g92EQaGVEVuHK2Vez6OnrJ1
	G3o2duJRmEQKALpkYRrs66uL2NhkYfEF111NSlJLaZHyQcwGgrDlnugDKHrYFWPqWAQqTVIpuSP+C
	8jEyWWugxNlS4oCNxzsdoJFofXSgcBulIKzMT/wh1mnzwAG6Jr/lV+UCV9ybOs4L5TKjXFkQblSwS
	NCpxTONWRNP3WW/Jdq5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmit-0006hD-2e; Tue, 24 Mar 2020 16:48:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmik-0006gK-6s
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 16:48:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C5531FB;
 Tue, 24 Mar 2020 09:48:05 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 62BB43F71F;
 Tue, 24 Mar 2020 09:48:04 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:48:01 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/2] arm64: lib: Use .arch_extension
Message-ID: <20200324164801.GD3901@mbp>
References: <20200323191807.3864-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323191807.3864-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_094806_294560_5D7A7DA2 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 07:18:06PM +0000, Mark Brown wrote:
> Currently when implementing optimised assembler routines using
> architecture extensions we override the base architecture along with
> enabling the new extensions, causing problems for in kernel BTI support
> which needs to raise the base architecture level for assembler files in
> order to generate BTI landing pads.  We did this due to a lack of
> support for the .arch_extension gas feature in older versions of the
> clang built in assembler but since current versions of clang now have
> support for .arch_extension we can use that.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

I'll queue this through the arm64 tree. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
