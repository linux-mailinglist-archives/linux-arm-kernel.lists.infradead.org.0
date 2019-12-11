Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78F711A5F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w69P83YOh80ul53X77NONR6gI/3hAwVpR5XrAZ+GYoQ=; b=N0vCgNoe5pzner
	zpJED0fSGGI4x2d7OVQYs6PYQ3DzjI7iq73tFX5+CuUed8gHurBza3PHamGBkRGaxc3aAoFTGLYGf
	Q9CL3NAvUJqyGmTy1lQPuVxAykXIK6v3U8fBGNEPzxXAILwthBZC/e+FPjWl1z/0QyeSXbt9gYCFQ
	BCVrPhFgn3aQ+nRYqhgpwrxx4PyPOQjr4vDNeIt5l2vUZPwo5ulfDCcOP6PVV3RysPwdbSc+pCMvm
	3pPEROt2mfKmNnD3vnwcX6HmXVQce2go4m+FwvBcVoWT1k7CFtMupoA0tVc6wrwEAn/SP2A6t8sND
	Hnf8niHj87Y8a+djCHkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexUv-0002PA-2o; Wed, 11 Dec 2019 08:37:29 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexUl-0002Ol-R8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576053437;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Subject:Message-ID;
 bh=vOD0y0bF78anF7hD1xvYENe8jRmoFPCWo9m4+Hl5kg0=;
 b=RNBrFs47dlqyNiydfyRrivejRXk7Y4Duh1/L1Tz7uhtuuLoguBeys13Vji7H5zu0
 6Nd6uQZSCIZASDI+vOlXW8inJUX68bbD7se9+h5TQGEF6/Wo4gaiIfOKG8Krt3jcNFs
 juyee6cNWEymMUMpEFwlCKAvPDbwKmms9smR6+04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576053437;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Subject:Message-ID:Feedback-ID;
 bh=vOD0y0bF78anF7hD1xvYENe8jRmoFPCWo9m4+Hl5kg0=;
 b=hqCBSE3bNjnILffanERSXQF9tzjmj9KK18RoR+NgCpVimh1e/q3maenSLCABBK5D
 K3sFN25MgARqqUQBVArHYLZiiNEQmdJDF96LgcR5yYragiS9MGLwi6wPiM631IHOaRe
 kLj6JLTc15xRYZGyoySVRkn96BmkBB+bHwNbDfeA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 08:37:17 +0000
From: dikshita@codeaurora.org
To: linux-firmware@kernel.org, linux-arm-kernel@lists.infradead.org,
 mchehab@infradead.org, linux-media@vger.kernel.org,
 stanimir.varbanov@linaro.org, acourbot@google.com,
 linux-media-owner@vger.kernel.org
Subject: qcom: add firmware file for Venus on SC7180
Message-ID: <0101016ef41af4d5-08af2249-2585-4642-828d-e129e935aa22-000000@us-west-2.amazonses.com>
X-Sender: dikshita@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.12.11-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_003719_902979_031B5C94 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This pull request adds firmware files for Venus h/w codec found on the
Qualcomm SC7180 Chipset

The following changes since commit 
e8a0f4c9314754d8b2cbe9840357d88a861c438a:

   rtl_nic: add firmware rtl8168fp-3 (2019-11-18 16:16:01 -0500)

are available in the git repository at:

   https://github.com/dikshitaagarwal/video_firmware_5.4.git master

for you to fetch changes up to e10ed2126e33582c6c9c5896ca7c16907980784c:

   qcom: update venus firmware files for v5.4 (2019-12-11 13:53:22 +0530)

----------------------------------------------------------------
Dikshita Agarwal (1):
       qcom: update venus firmware files for v5.4

  WHENCE                   |  10 ++++++++++
  qcom/venus-5.4/venus.b00 | Bin 0 -> 212 bytes
  qcom/venus-5.4/venus.b01 | Bin 0 -> 6808 bytes
  qcom/venus-5.4/venus.b02 | Bin 0 -> 870812 bytes
  qcom/venus-5.4/venus.b03 | Bin 0 -> 33792 bytes
  qcom/venus-5.4/venus.b04 |   1 +
  qcom/venus-5.4/venus.mbn | Bin 0 -> 916924 bytes
  qcom/venus-5.4/venus.mdt | Bin 0 -> 7020 bytes
  8 files changed, 11 insertions(+)
  create mode 100644 qcom/venus-5.4/venus.b00
  create mode 100644 qcom/venus-5.4/venus.b01
  create mode 100644 qcom/venus-5.4/venus.b02
  create mode 100644 qcom/venus-5.4/venus.b03
  create mode 100644 qcom/venus-5.4/venus.b04
  create mode 100644 qcom/venus-5.4/venus.mbn
  create mode 100644 qcom/venus-5.4/venus.mdt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
