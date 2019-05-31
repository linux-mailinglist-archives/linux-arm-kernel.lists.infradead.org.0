Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DCC31273
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvxGpFoYZOIZZK0cmh5Mdbg7kPcbIUK4Gnl+hOLX4kU=; b=M5o3ShD8I40O1c
	qJK04wrds4TjyQQZL7OvTsyp/0OYT6xxmfOYHH/vqX3/3xAtrxJTmiCuwEAWW0UZ8McQm2WlCXwQO
	gNKgoLzjeZXU7hEAnyjtjAb5bsHFq7hEYHjpGUOo0S/1TYHFnSt51xu2KzEX2Q2VAldCGlYT+SNv4
	uX5yFyXqBWXUelZ+2pCHjWdiwcTzWHmXxEFbirkE2N/X113pLbdiXyd0J3LokVashVc6A8lfyA8FA
	Vv5E/eeZgQjaJYAmUyozNAIX+6e4a3U/D7IfZH84kJuK7k3Yxs0TB2N+RIevBHOtZ5CCaj8N9WKXe
	Kwi38nMVwDDXokhFfbxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkTc-00044f-OU; Fri, 31 May 2019 16:33:56 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWkTW-00044S-Uo; Fri, 31 May 2019 16:33:50 +0000
Date: Fri, 31 May 2019 09:33:50 -0700
From: Christoph Hellwig <hch@infradead.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
Message-ID: <20190531163350.GB8708@infradead.org>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530.150844.1826796344374758568.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530.150844.1826796344374758568.davem@davemloft.net>
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Joakim.Tjernlund@infinera.com, iommu@lists.linux-foundation.org,
 camelia.groza@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 03:08:44PM -0700, David Miller wrote:
> From: laurentiu.tudor@nxp.com
> Date: Thu, 30 May 2019 17:19:45 +0300
> 
> > Depends on this pull request:
> > 
> >  http://lists.infradead.org/pipermail/linux-arm-kernel/2019-May/653554.html
> 
> I'm not sure how you want me to handle this.

The thing needs to be completely redone as it abuses parts of the
iommu API in a completely unacceptable way.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
