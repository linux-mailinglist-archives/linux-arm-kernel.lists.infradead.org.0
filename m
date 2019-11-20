Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E68103418
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yq91l81qpD+zedGJhlZ+Jyd8op+2UB4KgMo58jZLY4=; b=F0/v0JEer9oUOU
	HjXc07XpQ7Rfiwx9CxhFwzJtmxtjb/eNpo263SoAxr0V7w56ArV+QdVVuDVC/E9Bd4wllnbhLp2uC
	EkmcI/LrfseLvVPOYfyGFBaKUSZpBa5nWdbx3WWM9OmaTke4xTsrUIIJOy0QWFJf+qM2IILsYTsNz
	xIkH6IpSLC1EeBZWAOCoxqzD/ktj0e7ttHvksz4D0mTHiUk/KZIcDoSdt1q5UPFqs7M5m9g7J/Nkq
	8zkAnd0HkFa2+C2upRlz9UOJJh/3OCfXTNqi0g5i5JWzpdC1PPutmbc3FjMP6h2OPeH4x7CAv8RrM
	oOMdN/ijrs4vigoWbkQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJ7Y-0006j0-7t; Wed, 20 Nov 2019 06:05:44 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJ7Q-0006hm-Nw
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:05:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 33C6266D1;
 Wed, 20 Nov 2019 01:05:34 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 20 Nov 2019 01:05:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=MqACBpEH9i8p185f/jCjhS3Buz1frYL
 b77NTyx979Vk=; b=i7XKy7y1PAPvEgYOMCazKDu7BXD8GlpoYO0b/DBDIBevIRN
 oSsmkXzqiXQhG2Jq+Qd5XDA42EyYTg48eht/Xln+pFFphAE4Wr5BupTMdKWlM3Fw
 jn2JmooRWq+DeV9QmpImEqvvRg/G9PATHSu8qX6Id4TeTDXir6MfOqFb5mm03mbX
 XnyTSMzM4Wwzcb1sKe7CAgaRzKPRWUCpYZTRQTTvIt4EYuTxBHfXgO0RA+JrOkZZ
 zO1+/ONdWl3BYsmF5yWiE3nJdQFQwlQKPBIxT2cz9AtL+FCRZZBKwCREIPzoP8V4
 myUat4Xt/IJGWXwFQ0iYbWY6hKjn4TuIMPP8ILw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=MqACBp
 EH9i8p185f/jCjhS3Buz1frYLb77NTyx979Vk=; b=LJ4yst4Apz2MLuo0lKehfh
 zMqxHdvAShQNWZwqQaXHzMmELTPswvADN1bS/OhbNjs6PJv3KkqqVHb85IVuIOqI
 KerhvkyjTNmn688uJvc5szdzWrKmoG06NYfXFhTPE3yPvp/mJlA2aUCdro0fT1C8
 LFnFIIIo9rvQPLtwVUHRxgvKhq/411RQz5zEQzYDgrxnaBTlliA227Vf1O4Z64MX
 nunTveBc+fvoGSEbpprjVbKiMrLV6eAGKXJqT4Zh6iqYONYU+Byof6x0VjqjsSws
 YIg9bUJeUjmDz3lC281U3WRxW+PDAEMTrFScfZ+NHCJdXLmJtsK0OyAnsgZ9rpyw
 ==
X-ME-Sender: <xms:q9fUXalOHeplB8yX1vzlWHBcSscnF4HNXZBSR9sI3r-PvqyKms2BJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudegledgleduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:q9fUXVQwd6XqjXTUXw50wQGrHC2F8Cs31GSA51fL3LNn58J3g-mz4w>
 <xmx:q9fUXVYlNjqiogexue1MOxuvWRhS75Wbdx0YSdrb4eH9sDbiYxYrMg>
 <xmx:q9fUXR8XH-IwBjQObAQ_n6vciRRjHt9VPTLSKP0mMGCrZkUTZRPGJg>
 <xmx:rtfUXf--SERIAc9OW-KEysE8HrVyG9VEO-RmAfdYmXiXxkt6cTDpbQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9A0D9E00AA; Wed, 20 Nov 2019 01:05:31 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <b525ea84-aaa0-45b3-95fd-a1b3518511b3@www.fastmail.com>
In-Reply-To: <20191118104646.3838-4-i.mikhaylov@yadro.com>
References: <20191118104646.3838-1-i.mikhaylov@yadro.com>
 <20191118104646.3838-4-i.mikhaylov@yadro.com>
Date: Wed, 20 Nov 2019 16:36:55 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ivan Mikhaylov" <i.mikhaylov@yadro.com>
Subject: =?UTF-8?Q?Re:_[PATCH_v3_3/3]_mmc:_sdhci-of-aspeed:_add_inversion_signal_?=
 =?UTF-8?Q?presence?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_220536_852744_58AECD49 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 Nov 2019, at 21:16, Ivan Mikhaylov wrote:
> Add read_l callback in sdhci_ops with flipping of SDHCI_CARD_PRESENT
> bit in case of inverted card detection signal.
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
