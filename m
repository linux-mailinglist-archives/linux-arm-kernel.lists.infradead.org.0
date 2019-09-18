Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3922B5E63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9NSnbpafcLRmmWca3VCZqK2GiztcFJ4WkuQiA2DpA1E=; b=cHNVnqkF57+r7F
	FHnda7kWXvgK3XYc15XKrZ4bdj5ZIengrkv86L306PddmPhZTmvJDiJVnQ5WtGAtKdqvFPYUL3B33
	oLA4Ix0Xw1lTA0zUCCfn7ukWxOPqlwaSOqAFIhxWfKM0Ypq2Fop/fqw5WiGpBUROZP6rt3LoKB1P3
	z15W1on9q5EzyUQCOuPLx76FyPnQ7GC3xd4rBYv9AyCEhwqHaPnid4a9CSM6XeX0H+41Ej2kK22LX
	GrKvp60+09D7DoKD+RkyqnQdH7z13nKsQZM4M26ipUng9Q9qlEOqKxvWflJ7l2C6kvl58/4YmwpsO
	Byq2U6g1i50I2CeEAtCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUmQ-00011n-Gl; Wed, 18 Sep 2019 07:53:38 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUm4-00011F-A6
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so3509181pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hSMOl3iSrRpXlHeE5xjCiDIndldeUrDABtlwaJ/jr9M=;
 b=kCTU1lN/PgnOcJLN5S3Tbdb11R26JjYMrwr/xRDnKpdsvfp4kOpnlm+orD+G61a8h5
 06cI5S1hCaEVAV2JyVDhiC6SSnlL8pm/F9JWfjFs++Ggqf89FEsnnrIa6SAVMvzBlh/b
 2CPyZTfzW2Pmjvctg1MB5kqgTGmTjrM+2gsE8kJS3n6gKM7IkPYf02Jd+KMhcZsm1KDO
 /G66GWGvd/6ic1i+FLo/q1Kn3Ou3KirFBjRNiz5UnazFOXu6Y4iNwAcNxX8f+tfweXeL
 BOn5S4lFE0f/9pSQocEHor1eDcxMIYyp5SAsWxlDCaOlHsUBAw98h8FFzdqt8XfMyYyH
 X3Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hSMOl3iSrRpXlHeE5xjCiDIndldeUrDABtlwaJ/jr9M=;
 b=eqVQSXHxn5wW/GKSb5bX1WDVUqRBk5pGKykaKe60vVOtL/TNatPI6Oh7o83EYfYVDL
 QTKJ0aGMgwBMof/SjcBThQJN3w2YLT4TgUBJKRhtXbnOt3l41KpZeP7BeRjUxu2dAnhA
 6zlQpL87/d06uvAnbYpzCRwAPYfZ9SG1P3OIT3dBM89NLTInoX1oPxCY8ie3UG7bk6SJ
 mJJsy062pM4/Bk9s5iGX9SkN9Y68r6mrNrIwzT0bKXpc5wkDXcowotUmyK32O2C1G/IE
 b3WrTswOMLDsUd/Czt3YHBdd8PnIgubdZ0H4Ss2cK2h6MaiRFB7Hg8sUfFBFdtfv27+B
 QN+g==
X-Gm-Message-State: APjAAAUhdfz9oOKj2bj302twbqyI64PXqgkjk1CpOPanNHDSF9UcHXKD
 IgbfJWWIT59L8Uv06u5qlxU=
X-Google-Smtp-Source: APXvYqwvVW9jJdHy5gE8lLIbwy8ELcp/zN9mDprxNkj63ZlbaO61Y0JTesXzYUV6appyqECbirGFMA==
X-Received: by 2002:a63:70d:: with SMTP id 13mr2796186pgh.326.1568793194471;
 Wed, 18 Sep 2019 00:53:14 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:13 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 0/7] counter: Simplify count_read/count_write/signal_read
Date: Wed, 18 Sep 2019 16:52:41 +0900
Message-Id: <cover.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005316_356689_72D8249E 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v2:
 - Update the rest of the drivers under drivers/counter

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

William Breathitt Gray (7):
  counter: Simplify the count_read and count_write callbacks
  counter: Simplify the signal_read callback
  docs: driver-api: generic-counter: Update Count and Signal data types
  counter: 104-quad-8: Update count_read/count_write/signal_read
    callbacks
  counter: ftm-quaddec: Update count_read and count_write callbacks
  counter: stm32-lptimer-cnt: Update count_read callback
  counter: stm32-timer-cnt: Update count_read and count_write callbacks

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
