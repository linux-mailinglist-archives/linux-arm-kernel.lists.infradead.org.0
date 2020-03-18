Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DDB18A200
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 18:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tU53EUgEJk6adAHKK+4V5s1/U5CXvWaShttHnAQqmQI=; b=MqYAZSAUBtXdER
	liZMdHJZTHepxZu0Qx4bhw1aiE/t1hrwCGxF14skOrcUOfvmF5uYWOop5hqHqQbY5DkJYPvcfiEte
	Ulu7UqugsfADFvVWdwpxwpwNDy39J7114pR5YUKVYwRywKtNxCqJanMHfFZ+bRUU+8M/sRRlS9/PF
	U1yDUar7tjaGssiNHSwxtDFQLGUKA0VklPv0/XzKbeEXwtb4p2sn2IkvYQ3EJCCnKcIGTBDRXB1mv
	ewSq3Rmed3rD2hb4hd0qoJt12c1kZe2PCApaCSdf68QMfJNGRswhwlFeyT0jUk83CZyX3t5q/LZLw
	SVJaGn0z/RgSco6CrQug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEcwT-0003ZB-GK; Wed, 18 Mar 2020 17:57:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEcwL-0003YM-3h
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 17:57:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D09A01FB;
 Wed, 18 Mar 2020 10:57:11 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 11E303F67D; Wed, 18 Mar 2020 10:57:10 -0700 (PDT)
Date: Wed, 18 Mar 2020 17:57:09 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200318175709.GD94111@arrakis.emea.arm.com>
References: <20200316124046.103844-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316124046.103844-1-remi@remlab.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_105713_195708_4B439C9E 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 02:40:44PM +0200, R=E9mi Denis-Courmont wrote:
> From: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> This switches from custom instruction patterns to the regular large
> memory model sequence with ADRP and LDR. In doing so, the ADD
> instruction can be eliminated in the SDEI handler, and the code no
> longer assumes that the trampoline vectors and the vectors address both
> start on a page boundary.
> =

> Signed-off-by: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>

I queued the 3 trampoline patches for 5.7. Thanks.

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
