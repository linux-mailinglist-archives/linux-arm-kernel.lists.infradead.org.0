Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDFACD915
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 22:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CGqwIZQKeLxpMGEpgPRjWYiaDMru5k9e5J1iPD3XKGw=; b=Lkn0OlBzvGEnH/
	hoztZGJk7W3bMEN69z8UvZiOjkCDu/htmgMcGYrlgW0s8mkAIvHV0KSgcDrRFEqAM7QGVTwo/WV6+
	QbO7OklpHtjTLESeG1rKf7stIFccItRUng1EiIrg8iMWoNjmOK/dzVCHFDcD893cos/padyosynkA
	rdZhkBKX3GDpVQi0br9E5EcoEG3oVd4Fj8bFyWycUGZXV3Qpws9sQWTm+1KkX4eESCd0c0DnwBgrw
	kugTtQWNV+uwxsdBR53FmhGnMHgj5rfmuBh/BdNAQE5Wo7A1aEdPtMLG2W+SCnIuuCkI3rCSUQs6k
	P1zP+aIG+cV3ZZ/NyrOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHCkl-0004sB-TB; Sun, 06 Oct 2019 20:03:39 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHCkc-0004rM-KD
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 20:03:32 +0000
Received: by mail-yw1-xc41.google.com with SMTP id s6so4349552ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 13:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SAD87elW3s517JLI2iTshbAxE2vtTeLTbEEr73+JTTo=;
 b=b8u9n4PhEviR3wP/yj+0PudSJxU/RYT93LpSALa8ko5AoW/fdnOhLH4/2mPEAfDvAT
 LHvEgW6OrV4EhOgcB/pPShK15w3OhQrky7AEqW3EY+LTTmGJopYUVXngibHNt2zzZfht
 XXSkY+gnBjhk0cmctHEciW2t9Ql/5hJW2IAbruDjuPHgTMpmxW4zVImSfzH7Lp4qDu8a
 5WkgNMbHjtPP1dCrLdtfA44CJV9v+AQi1gV1AJrHa04fuFkzj7x4eYmwcwocemaIAcnV
 uCshn4YyfgwT1DkAPBy1hYWXAg5KPYFjYoUGQT/X9AVU4QOhvb4JzjS2me3V3wb9H6xr
 BTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SAD87elW3s517JLI2iTshbAxE2vtTeLTbEEr73+JTTo=;
 b=aMwGMfjQUFmFyBHzXL1WRhLzYItpbHNJb9boSH8NglbocSUlyLuek0/HFMiGjoEdh6
 dknrmedEKHADDLFVWMg/X4UG3lkNXZcmC7XjbYA6v9bGc/lOsPgMiTArMdDUFU1bMzWT
 tC5peTRwM86X5aXq8azinDGxJwYJGPP/+f7GHhw4pg0j8UTnsmsz80ecROuumhs1G4Xx
 zDK1WvgucMYwhJHnJWe9IGPu/f0GEl/yFFZuivqaDBZLEom41l+An/d4zYprsuS33y7M
 rwAawjaAjFPlV0hGK35AcT+cztspf5/x1riM75FPdh0JHp0/rmHR9tVtc7YPbt7Mf7vX
 l6YA==
X-Gm-Message-State: APjAAAVxHIWZgZskDh1JFpnr2wtFPDFvtoScMjzh0/XYzLdqWyvgy66z
 SyLOKWjjXvj9xC2ZNxi3LWQ=
X-Google-Smtp-Source: APXvYqyQPcYRjH/0i8mxOghstPu0yUg69Or8AFQkg1v3xcY/ad8RpW1sQgbaxICtMnMxyHWdaKP62w==
X-Received: by 2002:a81:ee06:: with SMTP id l6mr13525880ywm.357.1570392209362; 
 Sun, 06 Oct 2019 13:03:29 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id x16sm3765266ywx.103.2019.10.06.13.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 13:03:28 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v5 0/3] Simplify count_read/count_write/signal_read
Date: Sun,  6 Oct 2019 16:03:08 -0400
Message-Id: <cover.1570391994.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_130330_669179_36C10E36 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 david@lechnology.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v5:
 - Add changes and additions to generic-counter.rst to clarify theory
   and use of the Generic Counter interface
 - Fix typo in counter.h action_get description comment

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

William Breathitt Gray (3):
  counter: Simplify the count_read and count_write callbacks
  docs: driver-api: generic-counter: Update Count and Signal data types
  counter: Fix typo in action_get description

 Documentation/driver-api/generic-counter.rst | 162 +++++++++++--------
 drivers/counter/104-quad-8.c                 |  33 ++--
 drivers/counter/counter.c                    | 101 ++----------
 drivers/counter/ftm-quaddec.c                |  14 +-
 drivers/counter/stm32-lptimer-cnt.c          |   5 +-
 drivers/counter/stm32-timer-cnt.c            |  17 +-
 drivers/counter/ti-eqep.c                    |  19 +--
 include/linux/counter.h                      |  76 ++-------
 8 files changed, 144 insertions(+), 283 deletions(-)


base-commit: 0c3aa63a842d84990bd02622f2fa50d2bd33c652
prerequisite-patch-id: ebe284609b3db8d4130ea2915f7f7b185c743a70
prerequisite-patch-id: cbe857759f10d875690df125d18bc04f585ac7c9
prerequisite-patch-id: 21f2660dc88627387ee4666d08044c63dd961dae
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
