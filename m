Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E24F3FBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0ZFqUqgqEq8zbtDfol2/DjxYMf+wsl8kYWSlIYmKmw=; b=LN4bwGfcr8oFJv
	H1rqU/+kmXia4lgtI4BUqxeUk66dA7N5vltS4Bl/JLP5UCAvwRwHuD/HU5G1dMgNBbEM83HPRfuZT
	Mi8HF6FXURVe3HOAmrfGSR1FOdvojbNSLtf4qqwf3Zx3ixIyrFK5So9pkZfcENCj2oj38vgajwCZs
	XthbOvnFmK3PI4/QCrojgooVHCHeHkgDcCy3IbUQHY2VtjY40iq/BNsVakgeCARXTxTZYihYD8vi6
	t1I2z2g4Icy6MGT/bV49QAti63yHtW5dxRyYW6G8BseXkrZarheGyqxj4hsNWVvNJNKK3V7Za6RIQ
	t+DmwR5/0QPam5912Fnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwiE-0004Dh-RF; Fri, 08 Nov 2019 05:21:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwh8-0003E1-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id p24so3891328pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=abrU7G2BP5v8QeCE5OZCvci6QXqITkbp0Z5/JmfzQPA=;
 b=XS4EhrtLD7ira7yvelmd2Zy3twZdQh8w75/0Bvi5MIu/L4pOW3y8Uz4PCFCEcn0x2V
 UJRHR7EHVv4upN1s3mKOU+aXz8ou1jxdpweTYwgv4ZnBbnd7Ii4zfwrgAp55n2AvBJH3
 1jhNhhQuZvooBbddpFbLmdVJs6jwPqfRAfvZpnzrHYf0XrHgX5EGpC7yIkL5+Us9WUFx
 BakG/iV27xw1PKS7f7ib3sHdPeWqSavpn0U224EvrUgbgOKPkXXEHgU5eVlcMk3CC16K
 aYQeJ7wbJ/sy2mgsQ4LVYZXgUfbtEZQm42iDbOBbjbnNadLsIbqADQtzfg1IwqX9IdC7
 iKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=abrU7G2BP5v8QeCE5OZCvci6QXqITkbp0Z5/JmfzQPA=;
 b=O/qh9pOU++vuy2/arikKr/pUmVJqf50RsPXj2d7xa8QlCes+ayHqQlyKrZiTyiyTdI
 QhzOgm9EXqsqw/fhTateXi5oyiUs3XuqO5/IOWRfKF61Za4d7+U3vaHqs5U1Nu6MM6+d
 9UsqX0wyLrKrCeN6w5Nf/aZf7kzQpy6etcLqW5lXq+Vr1RmXD/UGiI09WcqltI0ICR5U
 537aE7qgU3ly3JyxrUelGp0OwqWpayxzKQwgKMCc3zRyQjmHT8kBv3b7hbb/VCCOdPdj
 UDTwcLPACX31MNkwC0VG2uZDIupPyndljIIhaLg6S06pEdfluVKUTYOTFvywQjJfH8h4
 tnIA==
X-Gm-Message-State: APjAAAVnImcoaGvK8X8KJVumO8Ra5FHXGN4ydQBpRyc4m+ntbFJQIZ2Y
 2qW9m5KF58l5eiLsifhoAYM=
X-Google-Smtp-Source: APXvYqzuOVQPOmNdL1oWGOMyR40/RsnF24CKyjQWAw0vN7iQicHxialcfaga7srrNVEALqe7IjKKTQ==
X-Received: by 2002:a63:495b:: with SMTP id y27mr9468935pgk.438.1573190425229; 
 Thu, 07 Nov 2019 21:20:25 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:24 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 05/11] fsi: core: Fix small accesses and unaligned offsets
 via sysfs
Date: Fri,  8 Nov 2019 15:49:39 +1030
Message-Id: <20191108051945.7109-6-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212026_158832_6FA5BAB7 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>,
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jeffery <andrew@aj.id.au>

Subtracting the offset delta from four-byte alignment lead to wrapping
of the requested length where `count` is less than `off`. Generalise the
length handling to enable and optimise aligned access sizes for all
offset and size combinations. The new formula produces the following
results for given offset and count values:

    offset  count | length
    --------------+-------
    0       1     | 1
    0       2     | 2
    0       3     | 2
    0       4     | 4
    0       5     | 4
    1       1     | 1
    1       2     | 1
    1       3     | 1
    1       4     | 1
    1       5     | 1
    2       1     | 1
    2       2     | 2
    2       3     | 2
    2       4     | 2
    2       5     | 2
    3       1     | 1
    3       2     | 1
    3       3     | 1
    3       4     | 1
    3       5     | 1

We might need something like this for the cfam chardevs as well, for
example we don't currently implement any alignment restrictions /
handling in the hardware master driver.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-core.c | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/fsi/fsi-core.c b/drivers/fsi/fsi-core.c
index c773c65a5058..e02ebcb0c9e6 100644
--- a/drivers/fsi/fsi-core.c
+++ b/drivers/fsi/fsi-core.c
@@ -544,6 +544,31 @@ static int fsi_slave_scan(struct fsi_slave *slave)
 	return 0;
 }
 
+static unsigned long aligned_access_size(size_t offset, size_t count)
+{
+	unsigned long offset_unit, count_unit;
+
+	/* Criteria:
+	 *
+	 * 1. Access size must be less than or equal to the maximum access
+	 *    width or the highest power-of-two factor of offset
+	 * 2. Access size must be less than or equal to the amount specified by
+	 *    count
+	 *
+	 * The access width is optimal if we can calculate 1 to be strictly
+	 * equal while still satisfying 2.
+	 */
+
+	/* Find 1 by the bottom bit of offset (with a 4 byte access cap) */
+	offset_unit = BIT(__builtin_ctzl(offset | 4));
+
+	/* Find 2 by the top bit of count */
+	count_unit = BIT(8 * sizeof(unsigned long) - 1 - __builtin_clzl(count));
+
+	/* Constrain the maximum access width to the minimum of both criteria */
+	return BIT(__builtin_ctzl(offset_unit | count_unit));
+}
+
 static ssize_t fsi_slave_sysfs_raw_read(struct file *file,
 		struct kobject *kobj, struct bin_attribute *attr, char *buf,
 		loff_t off, size_t count)
@@ -559,8 +584,7 @@ static ssize_t fsi_slave_sysfs_raw_read(struct file *file,
 		return -EINVAL;
 
 	for (total_len = 0; total_len < count; total_len += read_len) {
-		read_len = min_t(size_t, count, 4);
-		read_len -= off & 0x3;
+		read_len = aligned_access_size(off, count - total_len);
 
 		rc = fsi_slave_read(slave, off, buf + total_len, read_len);
 		if (rc)
@@ -587,8 +611,7 @@ static ssize_t fsi_slave_sysfs_raw_write(struct file *file,
 		return -EINVAL;
 
 	for (total_len = 0; total_len < count; total_len += write_len) {
-		write_len = min_t(size_t, count, 4);
-		write_len -= off & 0x3;
+		write_len = aligned_access_size(off, count - total_len);
 
 		rc = fsi_slave_write(slave, off, buf + total_len, write_len);
 		if (rc)
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
