Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57C919E9AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 09:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lXkz04UdbMGXmpxerineqHbfNcb7J1zvc9vOqEboy8=; b=KEt0rxAKHg8w2U
	5bsHX1pNWcpmRcv5lw3auqt1RSdc3shMXLKuJzZLgXniVDYsDAEIWQOjO0gBb8bKBMmHSw5fmBMCc
	6nrYBeWjTlwIRsm72HtmKIuNwxwPCh8zspkIsvhbi9CT0jowWUcUe8v5IbWOe4N843PpiWw2CQSgL
	+AhK/pzDfdo+ijSsdbdntuAhyjzOrmQUIME9sL+QWuoJGiHuSkOwpqcni8spbjI6Zr5chQCp3+f3W
	ZK41qDOks8vHzH3iTijcT7pxfwn0lQNdknocI0T/7XyfvrsxSoxwclTO2kh+ilV+FGD3gCXQViFDQ
	U5iqhOPUKFIn09nvGlYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKzGT-0000st-1Y; Sun, 05 Apr 2020 07:00:17 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKzG9-0000r9-TW
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 06:59:59 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id AAEDE58026A;
 Sun,  5 Apr 2020 02:59:50 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 05 Apr 2020 02:59:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=yWE5iV1vF2rjVGqJzP4udG6OgWvMuVf
 D2zKlW0VL8vc=; b=goGwj/jmvd74/4dXXrkmJVPe5xI9r3yKgasZjk9WlI8sZvA
 Hq8FllL86de3H+jkfEIilxOxo12fkh/uZUGny/AvGivr3scfemC7SN6haQ8cLUDX
 kNhFTFxt3PvIwPTWj8+orWCj7oZPLvd5Jy1TS0VAMqEv9td8mDYMkk8gex5pvoeA
 ucNFcYwGXilpC8XYUKedvB+1ommO41Vzbiusd1/aW5yknjdpImx7oilaa+/dl9qW
 KE3k6T7vf1ggYLO/YNXbgb4F8FxAlcVUZ/d5VQ+sZyJEYLzQw5rkmZD96vbYLLu/
 Vlukw8OOzCVMFp3RsorCHmsR+YcxKKESTznHguA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yWE5iV
 1vF2rjVGqJzP4udG6OgWvMuVfD2zKlW0VL8vc=; b=QQpV+ip6yBO7k7deoxKGUs
 rW3WfZZP7kKZy5IZipRQlASYytedxXztVz9s6lAsbr9r1rfrO4aaV5W/NgiNkG2E
 dcwvdQ+XbPv7RwpPM2Ek7A+AqhaYPEQtoEg8FP2ct2LKqXsA//neIK5q0H5Kmv9p
 ESfTAcXiw+aRhyXlvNuR5YKUOayawJtEIkwpYkOO6fSTgb142/azseN7ik/FsTbf
 JdXgvn/gh/lkZtCk6sYTR3NB8gvhSy+5/RNDytiIgGfJH0n0RNJG5OJg8SLaezdB
 dnVkGcD2iuBA+cRfi5P7ID9bOvcIdfhofBrMax6bBiggzvEoSgEP/OpDUMvMtw1Q
 ==
X-ME-Sender: <xms:5IGJXgh39OEGA02bB29v2YQALa7x8qIPFiG_n0zd-ko5F5rCutG2cA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvghsrdhpihhnghenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiug
 drrghu
X-ME-Proxy: <xmx:5IGJXoUMkaRJo6jN3vOIm7edHXudlz9cSM0j6tpYFurIuA7U-IYdnQ>
 <xmx:5IGJXvCM5nfC-tJ_HT3EdJZkXcpgb3h5JENEvcJysnffznYFloNhjw>
 <xmx:5IGJXslnrlyKOycSkd-ZzaXEsrp6Cgglk7UNiANZGtnAa-OYfektrg>
 <xmx:5oGJXtU6C2CZPne5rDC3sbV-JSzh2weW3z2qanuGgwholBRpBXk-Qg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A15A8E00B1; Sun,  5 Apr 2020 02:59:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1082-g13d7805-fmstable-20200403v1
Mime-Version: 1.0
Message-Id: <69bfc045-2059-4d37-af7a-52f5840664cf@www.fastmail.com>
In-Reply-To: <20200403130840.GR2910@minyard.net>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
 <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
 <20200403130840.GR2910@minyard.net>
Date: Sun, 05 Apr 2020 16:30:09 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
Subject: =?UTF-8?Q?Re:_[PATCH_v2_0/3]_ipmi:_kcs-bmc:_Rework_bindings_to_clean_up_?=
 =?UTF-8?Q?DT_warnings?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_235958_087005_03BCE521 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 3 Apr 2020, at 23:38, Corey Minyard wrote:
> On Fri, Apr 03, 2020 at 02:20:21PM +1030, Andrew Jeffery wrote:
> > 
> > 
> > On Mon, 16 Dec 2019, at 12:57, Andrew Jeffery wrote:
> > > Hello,
> > > 
> > > This is a short series reworking the devicetree binding and driver for the
> > > ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
> > > changes enable removal of more than 100 lines of warning output from dtc.
> > > 
> > > v1 can be found here:
> > > 
> > > https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/
> > > 
> > > v2 cleans up the commit message of 2/3 and changes the name of the property
> > > governing the LPC IO address for the KCS devices.
> > 
> > Ping?
> 
> Sorry, I've been busy.

No worries, so have I. I was surprised when I found it had been 4 months :)

>  I've looked this over and it seems ok, and it's
> in my next tree.

Thanks.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
