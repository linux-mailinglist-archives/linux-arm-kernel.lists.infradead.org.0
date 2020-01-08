Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243B8134966
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHIfrujBkVSdWr3VeGaZVZo+q0Jcz4otFkyoNLs6VMM=; b=Kwm9Ffqxwfz+F5
	ZHShHz2RV25sH+5g20IJ+SbooRG7Sn4SseDjcN0QKlfqZuOFye/672o0tW8aLmk3e8XRDIOHPSovv
	emnYjS7Q8wpLWgLuRpmbDTTqHwNSyTXBmK2X/fHjHImwWNSNhxEFDpQ3ZoUexM6/ZmYhrfr9znXTv
	Enl71pa0rk5ihepI9o2ECeMf7E0DDffLpA4KyMZWLU//6RcunQnrGIA0tFpc8yUhGNV05fS8tj6Qm
	iSFv+/uWM5Gi9CEB4S5IvMprBCvbVOP8re973eoTedd+UT4g8OK17gHotkZVNtBLphHZKg/7J5Xuq
	I9d417xok3hbIbzVe7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFCI-0006PN-M3; Wed, 08 Jan 2020 17:32:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFCA-0006O7-Ec; Wed, 08 Jan 2020 17:32:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23776206F0;
 Wed,  8 Jan 2020 17:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578504758;
 bh=zde4+thehnGbArbgETmp1/n9EV2vs2E9tBvzdNLOWRU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Om03RYLZO25YvBd8fQ4l4lkiK29Fdgv+RsswocuPPdU8cVBbPL8UYGmspZ/Lmfhcc
 OgIaEtWTt9OeZi5x4j8z52DIU4qVrUQKDPTALpT1d+K7HPrn5S9FEzq3BPi0L7oq1H
 wysaixnizUdIlLmRtw+x2WC4PhaB8VUkHOm1YAVs=
Date: Wed, 8 Jan 2020 17:32:26 +0000
From: Will Deacon <will@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v8 00/25] arm64: MMU enabled kexec relocation
Message-ID: <20200108173225.GA21242@willie-the-truck>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_093238_509379_C4E16457 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, steve.capper@arm.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jmorris@namei.org, linux-mm@kvack.org,
 james.morse@arm.com, ebiederm@xmission.com, matthias.bgg@gmail.com,
 rfontana@redhat.com, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 10:59:13AM -0500, Pavel Tatashin wrote:
> Many changes compared to version 6, so I decided to send it out now.
> James Morse raised an important issue to which I do not have a solution
> yet. But would like to discuss it.

Thanks. In the meantime, I've queued the first 10 patches of the series
since they look like sensible cleanup, they've been reviewed and it saves
you from having to repost them when you make changes to the later stuff.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
