Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116B03A09A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 18:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rtiQemIONH03x8g5Fdb+nlDV/04ET3zgCbQv9sBoMSo=; b=BVp
	QgF8Vj5b5ExXApXc3OHTZNHzBwznnJuisGG1bEB0eD1jiXScmYj3nal1zDQ8dNp5gk5MTKMdphHpJ
	FSOw2oNe5epdld8T2dvPy6oC4G2YcgVf5ZTbD4xwQzPvMaOOqzeglPvkjdozN6F0H6E+MHdifsiou
	bGIHDUip7DEfEay7zyd+dRVAncozvFQP9/9K2/6vyudNi/UKJLzC7OH704uH1vpVFvxI4hrc1J78m
	lTLR5vCHL30LEd5yltYkApvLtLmHyoIy6XmXTZ8UBkKUYKxlKLgwvJqNaYKBYIvC5HNNWRPLIOfgU
	5hVtJknfR5HrqeYnm1k1OqOTjON909w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZdri-0001au-34; Sat, 08 Jun 2019 16:06:46 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZdrZ-0001aZ-4m
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 16:06:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id j24so4325973ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 09:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=JA4w9G5brhMC6ykumlR71a7BRlcbkQmLm45yAnvD7mo=;
 b=AuPiRuidDiRLzK7bVjoWtnuxPTlGtt96IUS4u3p5EbNU3NOYiWRUetrZiADDJpk92J
 IY4A23xw7tYaPD4XNgrButE88F0zrSuKtktDd2EanyXJyRJot10xErow9wrpapQgs4YV
 sKLVDAnwoysgyVr3h0uTpktwgdO4OWcq1KINhsQtBU1WxQC152LYwfsGjLOzHRS78BkC
 bZLiNiYJN9HMsbrdt3my+OlGGV1BkFefTUfcckpWX8DcumOfkQuCV1uM/Fy4iYbkzCe2
 0cDzptVltvRm73MxcHG9Fhq0JOqJ6rZg8PFNAiKQ5cGH9KSF+UE9VqEBlJ/a62vU36aS
 N3tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=JA4w9G5brhMC6ykumlR71a7BRlcbkQmLm45yAnvD7mo=;
 b=YpKfM0mzIEBK2ybUWffRiCiG1KDVrWJ8vxTXOrsjbR/rBOLnMMPQYMz9huxU1B4fWU
 ZJK8vYXPfBg8MSuVuXMWLQN76TudOXvcgh7w8tdnGsnGHMhiZSTjT4VQplZGirf7zpnp
 DwVJVkQS4xK8CzNObWAvQCEZyj9iGmltjXTMFcNUQzl0pB0yil5vQbtaZ6Am0nYd/2d1
 BhSOUoF1AhZOOY6D3dGzeCxgLRjRA/BF0NNbdW2Qi4m5IoVDxXfGvCwi412kgLFWb/hu
 4RPIvyzpukcWjJ3tnhdGHDRHV5+Hyoburnyu6pQVH/2XNRiFGS9XbAaM0ycCW4biooaz
 /lVw==
X-Gm-Message-State: APjAAAVzl0rrmsOO+CcNqUlMZsCufgAlIYLgQM3PfgVRx++OMxo3uxqe
 2MKN+qcS0RFiZXj1UDxWOiN+nhFb5E9Z4Ex1YKhoug==
X-Google-Smtp-Source: APXvYqyNU/pBQqoWgrpWR/kt5C+MUR6mq5t+/OydNQOrbcdhVnm3Ka4mv/E6c7sjLdnjdKrtEsqnwuCnWUhzZK2kRO4=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr3743186ljk.93.1560009994981;
 Sat, 08 Jun 2019 09:06:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:c503:0:0:0:0:0 with HTTP;
 Sat, 8 Jun 2019 09:06:34 -0700 (PDT)
From: sandra mario <sandramario851@gmail.com>
Date: Sat, 8 Jun 2019 17:06:34 +0100
Message-ID: <CACBnMhs_Cs9w6DT8ee4kxyZyCosXPw6Od0FCvTw=NwLMBRtWpw@mail.gmail.com>
Subject: security guard service
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_090637_187834_33A540E8 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sandramario851[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sandramario851[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,
      I'm Mrs Mario.I just bought a new home and I will like to know
if you are available for security guard services.Have a Nice weekend

Best Regards
Sandra

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
