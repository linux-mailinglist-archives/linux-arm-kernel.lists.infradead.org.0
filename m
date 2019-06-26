Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9593B57021
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk6Rkl/VoZGEChuGImodCFTHs0femdhASYiItWrLnOM=; b=Vx/G5qytXfaPFn
	nXqtrUTLVzDVnxkgIlMrblbSBkJIHzKrv/vnSJV2HRzRNIfNDdSGXbcvNSFEjuJOJX2XhYB41nBGd
	AKggirNhwTfpCAOzCw3yB3dQazJhxNgAZXHV7IZwGTf9eBApkvGBC/dhW9HefgUXW390MoqKnzEyT
	4Xurox/qc+f6sQV3SuqjS6HcFygrQLzY7AKifxvI+7Cm5/BKMUpQnii65XzYdAL+JVlnINdrHykqK
	3ScOeMhrwSIrSPClKvwbo/Loj79ayUJ9HuZ6X0I819Mr5Gy4CQjtiHOZpE5wPEqsQdBkaqfSQH9pI
	lOJ5uaNvjhPxDqnimLGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCCd-0007Nf-Ve; Wed, 26 Jun 2019 17:59:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCCP-0007NB-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:59:14 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hgCCC-00084q-Kz; Wed, 26 Jun 2019 19:59:01 +0200
Message-ID: <24bc6695f664669fc77778b7aba5a0f1c88ac85d.camel@sipsolutions.net>
Subject: Re: WWAN Controller Framework (was IPA [PATCH v2 00/17])
From: Johannes Berg <johannes@sipsolutions.net>
To: Alex Elder <elder@linaro.org>, davem@davemloft.net, arnd@arndb.de, 
 bjorn.andersson@linaro.org, ilias.apalodimas@linaro.org, Dan Williams
 <dcbw@redhat.com>
Date: Wed, 26 Jun 2019 19:58:56 +0200
In-Reply-To: <25bb0936-686c-101b-c5a4-474ed37536aa@linaro.org>
 (sfid-20190626_154015_130082_AEA49FB2)
References: <20190531035348.7194-1-elder@linaro.org>
 <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
 <6dae9d1c-ceae-7e88-fe61-f4cda82820ea@linaro.org>
 <f1243295f088b70d48e4b832a28f79c0cd84ca1c.camel@sipsolutions.net>
 <25bb0936-686c-101b-c5a4-474ed37536aa@linaro.org>
 (sfid-20190626_154015_130082_AEA49FB2)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_105913_158536_F7FD3F9A 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 08:40 -0500, Alex Elder wrote:

> > I think here we need to be more careful. I don't know how you want to
> > call it, but we actually have multiple levels of control here.
> 
> I completely agree with you.  From what I understand there exists
> a control channel (or even more than one?) that serves a very
> specific purpose in modem management.  The main reason I mention
> the WWAN control function is that someone (maybe you) indicated
> that a control channel automatically gets created.

It may or may not, right. I just bought a cheap used USB modem, and it
just comes with two USB TTY channels, so I guess for data it does PPP on
top of that. But those channels are created automatically once you
connect the device to the system.

OTOH, for something like the Intel modem, we might well decide not to
create *any* channels on driver load, since you have the option of using
AT commands or MBIM (but I believe both at the same time wouldn't really
make sense, if even allowed).

> > This ... depends a bit on how you exactly define a physical channel
> > here. Is that, to you, the PCIe/USB link? In that case, yes, obviously
> > you have only one physical channel for each WWAN unit.
> 
> I think that was what I was trying to capture.  There exists
> one or more "physical" communication paths between the AP
> and WWAN unit/modem.  And while one path *could* carry just
> one type of traffic, it could also carry multiple logical
> channels of traffic by multiplexing.

Right.

(What I wasn't aware is that QMI is actually a different physical path.
I thought it was just a protocol multiplexed on top of the same IPA
physical path).

> I don't think I have any argument with this.  I'm going to try to
> put together something that goes beyond what I wrote in this message,
> to try to capture what I think we agree on in a sort of loose design
> document.

Awesome, thanks a lot!

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
