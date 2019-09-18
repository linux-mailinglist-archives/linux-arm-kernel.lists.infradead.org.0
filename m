Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65857B65FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vfO3vJOCLYk2l6zDDn6DvMsEeL+fqzgmv8QhHj5hGH0=; b=dEl9nu1W8WdNnT
	jG1pK3jVfpqUZYecbfWrDWXzuXz/pbutN5w2KL+dvwsLktJuO3Du6up0YbkUYzwCbkaB09QrnBNS8
	+xlpzMhXibebukmVSLWDbZOXIa1p67c0LpItr7+CWn1zebDN81Uw4ZVJcYR9RdmiGF7dgcyWYtYnY
	Rg6rAlP0r0AE65By7pQ98FPeCmQUp6MESU3qD3Cm3JTUM14oHDL7fXO920Xljqy0xpGx8mnmS1qBe
	OYfGPPBvTK0L2rX8qf76ibSss3iXisLoltUtOYDVNCKTOcRIxZHUohgqWvvbSMM/tpPsuKq2Bo0Yp
	xSCJBcRXJTbRkc2q/KuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaru-0008Kd-V8; Wed, 18 Sep 2019 14:23:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAare-0008J0-Nh
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:23:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so4214027pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 07:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hBF1etsivhmKdLkajwW8GHvPk5tP312Rqd082oyW/40=;
 b=KTcABZbJz2NA0gOeD1Qk+C6NCkIU0co5QvjKv9sapaIiZ/aOcOklr2aph/qPdpteM1
 f9Crx3hv6rnSCrkcG89lN6CQljYO6GXIcen+1NBAOp3UVFv/GHksaNifgj73/zPtDhj0
 kS1Ckv3keBIrbasafOfh/gVuWTSMTPlkqgxBlGaZ2PkjjSFRe4/mG9SzFI9tKljz8IoJ
 n9Z8mOb3e4/09p35VMsBbMRTTU4uZdgxp9ikYxgaHqxsArontVYO2lPSFMHmOR1zzbr4
 BZBkP/WhVtTospi0W8CPHgAw/PcbuIvbu8x3H4S7lafBwG2FjZ2l3cDjQX0Ow0TRIBQi
 LR7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hBF1etsivhmKdLkajwW8GHvPk5tP312Rqd082oyW/40=;
 b=SK4cbMwS3gOhh/wznWrI+XMlgwnytxYmbnbJUEtiHz5By0m8DWDkhLP5jmCVSWEN69
 CU1Wn1q7yeOGzYD9EClYLblHaptQlhUpSF0EFj2plC6m5edCiSljI+Cak0wGncIqeSJY
 zjkqA2taFiRaSF2YMfk+H1pn4amqe0qi7qBLfHyVb5myMeMosLEEYFKVjsfCaiF436ZG
 bMx5KvzFgEwYZcX2xnmJV7lUE2r0aiCveptCkymsdleczPi35VrTI0zsolja0JtlH4h1
 nmyaxIcOGpqLGB4uyRnbYBGu7t4JmFQmzHAjLIuwcVoExur1+5JmuwOenhT8NAXRm8Np
 Roxg==
X-Gm-Message-State: APjAAAXkntkAs2EU6Zs3V/471flg8U8bhCSU6u0r4W+Hzaoumgp8nKU+
 w+LEb/De4chTesnOhIxr+Rw=
X-Google-Smtp-Source: APXvYqwDluvBGw1cnbd/MWHtPlAIMe4bMLEDRhdzKzQgVavoWQaUPt4wXe+kCj2DcEFZ303Bu4/vAg==
X-Received: by 2002:a63:d46:: with SMTP id 6mr4329157pgn.364.1568816605894;
 Wed, 18 Sep 2019 07:23:25 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c145:8e3a:1c91:3b66:30:c335])
 by smtp.gmail.com with ESMTPSA id
 d5sm10996675pfa.180.2019.09.18.07.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 07:23:25 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v3 0/2] Simplify count_read/count_write/signal_read
Date: Wed, 18 Sep 2019 23:22:44 +0900
Message-Id: <cover.1568816248.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_072326_779495_EC50C246 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v3:
 - Squash code changes to single patch to avoid compilation error

The changes in this patchset will not affect the userspace interface.
Rather, these changes are intended to simplify the kernelspace Counter
callbacks for counter device driver authors.

The following main changes are proposed:

* Retire the opaque counter_count_read_value/counter_count_write_value
  structures and simply represent count data as an unsigned integer.

* Retire the opaque counter_signal_read_value structure and represent
  Signal data as a counter_signal_value enum.

These changes should reduce some complexity and code in the use and
implementation of the count_read, count_write, and signal_read
callbacks.

The opaque structures for Count data and Signal data were introduced
originally in anticipation of supporting various representations of
counter data (e.g. arbitrary-precision tallies, floating-point spherical
coordinate positions, etc). However, with the counter device drivers
that have appeared, it's become apparent that utilizing opaque
structures in kernelspace is not the best approach to take.

I believe it is best to let userspace applications decide how to
interpret the count data they receive. There are a couple of reasons why
it would be good to do so:

* Users use their devices in unexpected ways.

  For example, a quadrature encoder counter device is typically used to
  keep track of the position of a motor, but a user could set the device
  in a pulse-direction mode and instead use it to count sporadic rising
  edges from an arbitrary signal line unrelated to positioning. Users
  should have the freedom to decide what their data represents.

* Most counter devices represent data as unsigned integers anyway.

  For example, whether the device is a tally counter or position
  counter, the count data is represented to the user as an unsigned
  integer value. So specifying that one device is representing tallies
  while the other specifies positions does not provide much utility from
  an interface perspective.

For these reasons, the count_read and count_write callbacks have been
redefined to pass count data directly as unsigned long instead of passed
via opaque structures:

        count_read(struct counter_device *counter,
                   struct counter_count *count, unsigned long *val);
        count_write(struct counter_device *counter,
                    struct counter_count *count, unsigned long val);

Similarly, the signal_read is redefined to pass Signal data directly as
a counter_signal_value enum instead of via an opaque structure:

        signal_read(struct counter_device *counter,
                    struct counter_signal *signal,
                    enum counter_signal_value *val);

The counter_signal_value enum is simply the counter_signal_level enum
redefined to remove the references to the Signal data "level" data type.

William Breathitt Gray (2):
  counter: Simplify the count_read and count_write callbacks
  docs: driver-api: generic-counter: Update Count and Signal data types

 Documentation/driver-api/generic-counter.rst |  22 ++--
 drivers/counter/104-quad-8.c                 |  33 ++----
 drivers/counter/counter.c                    | 101 +++----------------
 drivers/counter/ftm-quaddec.c                |  14 +--
 drivers/counter/stm32-lptimer-cnt.c          |   5 +-
 drivers/counter/stm32-timer-cnt.c            |  17 +---
 include/linux/counter.h                      |  74 ++------------
 7 files changed, 53 insertions(+), 213 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
