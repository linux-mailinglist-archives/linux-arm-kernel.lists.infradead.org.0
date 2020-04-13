Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DCC1A6EE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bWMjyx7M9wStamkd1jwNO+LyOoHwBFVsPYwA2tEEnQ=; b=isb67j2aEHxdDd
	5uDHP9qtnfHWQCkzJHETGUi9SDOboK+byrUupTfkcligvK7VPHfPH4CLARDUuhVHHpmo233oAGSjL
	4oXyDICBw5C+70CzsgXpd77Ej0zQjmAt2rzzNoad1lDKjAqykCghcnRUlBkEo9pdmPPjf/krDpZVE
	zgdGiGGvs42vE+oQEsv3obKSD4GrFtOK415NVko7Mb87IDwaAU8eCj9ksIlWc4+VU5yhDpEPSTqA5
	clau0GlyKz1hz+T/vrnCDnjLVVD5mTo3jPkKZwBWeqPGeRt7I6DtnW8tHqL2YLFnG9Z5btRqLgY3i
	7ZoVE2CvjGOOBJwygvjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7Hc-0002mS-0J; Mon, 13 Apr 2020 22:10:24 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7HT-0002m5-GJ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:10:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 509D65C0130;
 Mon, 13 Apr 2020 18:10:13 -0400 (EDT)
Received: from imap21 ([10.202.2.71])
 by compute4.internal (MEProxy); Mon, 13 Apr 2020 18:10:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flameeyes.com;
 h=mime-version:message-id:in-reply-to:references:date:from:to
 :cc:subject:content-type; s=fm1; bh=dU3Iu79Xm5wF+fZA8F64VxF0jQ6E
 BkihdWN7iosDF24=; b=VyfZVLxJOWe1kOj5mfF9Pzt0kGKoE27xsJNOR0upxFjf
 uECIlKWvO/XWP8ic68EIn+8fNYD1WwyzpqXPGCO1HszDwcti5iYT1/40+7B2nPI8
 LZFDHfTDpRY9ShT2qncQ0EGy+rA+eLHsNWeUh5qnBrS1YwUBgXPr053OydB1+VK4
 BInMs66LIyhDP/TuXLNaTNSvKNPkBMYcsj93mSYsxjh//HoJ2hfAqrUnGfKgFao3
 nSgrXeOSGAz/+kQ8V1JWt1SSok4sw407YTj9Z6Y9Y3iIwqcFltS446/Vm1c3DQqC
 /cCe6VfId2W7WPE3TbLts1E8U2SyO8KefQMb+jj9QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dU3Iu7
 9Xm5wF+fZA8F64VxF0jQ6EBkihdWN7iosDF24=; b=qOeLf4yVVxh+HndIplCiZC
 hlhLevx0D6Asepu5oWwpbyU/tpQAXHTeMLAVAGQ+D/P4jXc5IGwweH8Ff+oLueCC
 +Ea9P7nfs0JtdTMFnf8KF1LfSDfAk6Qo/yW3jl4/O6SjAIcWToCGu6H5B54Xn4nI
 N8LxMGgENcsQCDy2Z7069+MVLz8vz7KfA7OZsqvMbdgrV+rDPmlEgws3NWJ6z51K
 jzp24Q3kSqTga+5wJjTpRaQGUHI04791b4f5aiB0WvQDgceGlw3OR9GxH54zImD0
 VJrYVkmrm/mBDHtNOuRj+iQVTuK1KFN85mwybB3Yuzej5zriETxScwOTogZ2b63A
 ==
X-ME-Sender: <xms:ROOUXtmuYFax9hDMTDnR8r1C1TRKZ1cT4z9P4KFBFojy1yH1bmjBUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfedtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepffhivghgohgpgfhl
 ihhopgfrvghtthgvnhpjuceofhhlrghmvggvhigvshesfhhlrghmvggvhigvshdrtghomh
 eqnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepfhhl
 rghmvggvhigvshesfhhlrghmvggvhigvshdrtghomh
X-ME-Proxy: <xmx:ROOUXle06T6aXoSgulnFBY1B3KCj8qqQ4Agr5cXkHeGxcn0Ynkv3HQ>
 <xmx:ROOUXqBY3BeO4iTen7W4fEgQx8yu1Xo8J1-_0bStyvyWCJEijY_siw>
 <xmx:ROOUXncSf3EF-NcbQFj_CriC0OT8IwL8ofwSy0ynzEO9Vk5Kcg2Uvw>
 <xmx:ReOUXoOtnuWWH12jVUL-jj7Twddg7OgkxRcAEe0QD74A_mG34VYIrQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6636A660082; Mon, 13 Apr 2020 18:10:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1104-g203475c-fmstable-20200408v2
Mime-Version: 1.0
Message-Id: <09542b31-58df-4950-93ec-836492aa514d@www.fastmail.com>
In-Reply-To: <20200413220832.GA34509@piout.net>
References: <20200413170031.13104-1-flameeyes@flameeyes.com>
 <20200413220832.GA34509@piout.net>
Date: Mon, 13 Apr 2020 23:09:52 +0100
From: =?UTF-8?Q?Diego_Elio_Petten=C3=B2?= <flameeyes@flameeyes.com>
To: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/4] at76c50x-usb: update dead links.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_151015_679462_159E2FFB 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020, at 23:08, Alexandre Belloni wrote:
> Maybe it is worth having those as part of linux-firmware instead.

Possibly? But I was not really trying to update the way the firmware is packaged, as much as I stumbled across a few broken links and decided to fix them :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
