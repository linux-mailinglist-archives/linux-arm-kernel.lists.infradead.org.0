Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29912F77B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 08:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qHkL+DLbD6UJvW/xHGS16aTZqG2/32mlxoCboebHXY=; b=G4yw958SmpIMMy
	Nic5CZLDKq7kcBVhItZsUnNLGX1hLqT9IhVNVH52ScSZfQG3ua4wvN71IAS6ABf541QrGT+n4YRoJ
	h9AH8DvpMwrlhWMUsTB6b7CEDHxPoX3YUtIiwIZfV4ABilTTQ7ni/XPyFZ+mel7iD6wzLDMUQC/PE
	VCqTKuYlsJi+J3vsbAHBtYdGKvl7E4wA1xxbA/7L3dGmGxCwMpeOnJYmL+YNX0NfpqdVewaZSWUyW
	kDgzkM4lOcOgm+OWu1siavY+nTl4uOLaDwvbgsuXeZySxALnt6dncn2c54C1NccTcfzavk7oQIqEC
	lJZPO3ROXQ5Df8kaZ+Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWEeZ-0000fg-Qs; Thu, 30 May 2019 06:35:07 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWEeR-0000fN-4p; Thu, 30 May 2019 06:34:59 +0000
Date: Wed, 29 May 2019 23:34:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 4/4] arm64/mm: Drop vm_fault_t argument from
 __do_page_fault()
Message-ID: <20190530063459.GA2181@infradead.org>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 06:04:45PM +0530, Anshuman Khandual wrote:
> __do_page_fault() is over complicated with multiple goto statements. This
> cleans up code flow and while there drops the vm_fault_t argument.

There is no argument dropped anywhere, just a local variable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
