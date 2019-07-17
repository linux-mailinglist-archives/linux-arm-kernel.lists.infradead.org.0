Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6E66BF83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsB7y5OV5ZVXGiHA6zK8isCvWj7e7oIWgCuQj58rohQ=; b=lY1G5As+gSGE1f
	1zTdSwsZfV3kzaS5QaY6IWmWccaJv1wf7IvVm5h8+mIu4x55Kvfa0uSFTb2GV6wEZQDg+ZhHfDeMI
	I11EGrUamd1H/ly+iSQiq6aJpr9gTA8jrstIcq+oYWySgsnrGiBC7hlbSs0HHJ5zJ3WR0zRxIIL7d
	17HDgh3KgUplv6DorVz59mWNsKWkZFyVhTNSXnTcb5RcO6Ik18VqSl0Ohun+vYevAOFkz93l51Yy0
	7oKN3F3uJ0F3S6FCB+6XvGHBnPmrbom6bsAoJ1BLiahF4GMlBPFx29oM+fBpDhJOQEZm9ZQ0rp9ne
	ehRIYpG/Bvitaar7VIAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnmZq-00035k-H9; Wed, 17 Jul 2019 16:14:47 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnmZB-00033M-N4
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:14:10 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id BBF80605C121F65CC65C;
 Thu, 18 Jul 2019 00:13:46 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 18 Jul 2019
 00:13:42 +0800
Date: Wed, 17 Jul 2019 17:13:20 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v4 13/15] docs: ABI: testing: make the files compatible
 with ReST output
Message-ID: <20190717171320.000035c2@huawei.com>
In-Reply-To: <88d15fa38167e3f2e73e65e1c1a1f39bca0267b4.1563365880.git.mchehab+samsung@kernel.org>
References: <cover.1563365880.git.mchehab+samsung@kernel.org>
 <88d15fa38167e3f2e73e65e1c1a1f39bca0267b4.1563365880.git.mchehab+samsung@kernel.org>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_091406_251892_5AFB04C1 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, linux-doc@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, Peter
 Meerwald-Stadler <pmeerw@pmeerw.net>, Guenter Roeck <groeck@chromium.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Corbet <corbet@lwn.net>,
 linux-acpi@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 xen-devel@lists.xenproject.org, Len Brown <lenb@kernel.org>,
 Andrew Donnellan <ajd@linux.ibm.com>, linux-pm@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>, Stefano
 Stabellini <sstabellini@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Hartmut
 Knaack <knaack.h@gmx.de>, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linuxppc-dev@lists.ozlabs.org, Peter Rosin <peda@axentia.se>,
 Jonathan Cameron <jic23@kernel.org>, Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 09:28:17 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> Some files over there won't parse well by Sphinx.
> 
> Fix them.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Hi Mauro,

Does feel like this one should perhaps have been broken up a touch!

For the IIO ones I've eyeballed it rather than testing the results

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
