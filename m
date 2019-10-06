Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58534CD918
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 22:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/+KCz+VxrGSVMZdlHteFXce92zDlH/HgYl49LCejik=; b=tpssbe4YSylnJZ
	oY1CcQo68Tq/fdaEjJ85F/VLuVMyiXh01Gu4nh2yYHJEHNCXKk3k1NKtH/L9rLN70jft2gD0NRtC8
	nEvG60G9WleYMpIMRy8a5y+KNSASj0qwLxHL8CcfvkoAJWkYXdlaCEcoqxgMZ86LnComt68PsfhYk
	2NXkz2iI6It590FRUTvJdZuTPsw6QK/kIGuOEpIY6E0rz3N5YrtPPFC01/WCB0G8qHy0ObaxDDyM+
	xS64e44pgS6hQSBhPvH9oJfRLwJ9Dz9tHKhb0AYFViEOt4xuqRJJPSrPGyShtF7WiwYq2BMTgkV+y
	HtQz/Gmx5V7dS3H25osQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHClW-0005be-Ck; Sun, 06 Oct 2019 20:04:26 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHCkg-0004sr-MX
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 20:03:36 +0000
Received: by mail-yb1-xb43.google.com with SMTP id f4so3974497ybm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 13:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PIaX21W8I9U+EF8hoBafqL2VfdvHvRxIA6u3x9/TwM0=;
 b=blJ+tDl8nG+FSdKewzSogp8WX4feg6K4mc5o3Fp+NyudNHmPlRGHJKHYyi3Dj0xOkv
 Us73dYpeeXifqLcgdM7PX4S/pUTCneN+KVMetVEJaDNO7VZyM9xbHbUSQy7NGRtXOrhh
 h8StpYzvNVVKJofD45zTFy+8iSfQKp+UUWfuGkUt9Z30wAatg9QkDUCc68Dl92za0EMf
 WimwZNQ+QHrNuB8VCVgxJNs0PnHKUX6oveNe14tkFHHhvrAwHA5rGSCXF+7LylvHdl9k
 GEQYNkWZE7HlncbmWwGSiiCFJv0aOQilT1YY2FBk+wTx64Q3I5oMqK0HdJuIw+1Dh+te
 8KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PIaX21W8I9U+EF8hoBafqL2VfdvHvRxIA6u3x9/TwM0=;
 b=evZg4IrkPcM1WY5JEZYjxpJ11S5/F9k8ttHSwsEOFgdVJfmWZ7EaBmh9kkCR37N9LH
 d5iS9V5Kz0X0UQSs/g3ydEcDOA4ogI5+kXUVokrVMJmNVqY7Rz/lrsMAcrg/KM5yJW8U
 fJGm4mFCMlTP1WOliHjVPX/pkvBi/4ggFzIfciIRRmZiW5vZJL4J7mQt0O9DQe/NFI2y
 gL/lzmfs5AmG0M6izhC/53DFl4A+e7QW1l+jvKJmB5fZgOeAI3sgG/A270/K+pAmlKG4
 pDNeBxnDQIVg90ecyff/Asfk979LClWjzWKfuzbTzzloslGVzkLFSrh5CTxIthXFnq4P
 JfFA==
X-Gm-Message-State: APjAAAXFOQAtRDe81OCj4h5pj3weoSJdQ8CBdRxbEvZnj36fKsJNg2N2
 x5wUgufdhekLbv6YeYAzVnaNRsjQ
X-Google-Smtp-Source: APXvYqz4mvN9s0757t230hmoQhGHOxs+DNUn1yMwWNnvg3C98M+iXwK0v5AeIOh5LLFcDlzwU/Briw==
X-Received: by 2002:a5b:b05:: with SMTP id z5mr9181818ybp.7.1570392213485;
 Sun, 06 Oct 2019 13:03:33 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id x16sm3765266ywx.103.2019.10.06.13.03.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 13:03:32 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v5 3/3] counter: Fix typo in action_get description
Date: Sun,  6 Oct 2019 16:03:11 -0400
Message-Id: <4d8dc1e31aaa02e2d0a1ea580f1923075967db5b.1570391994.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570391994.git.vilhelm.gray@gmail.com>
References: <cover.1570391994.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_130334_751298_75FDF6C8 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
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

The action_get callback returns a Synapse's action mode.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 include/linux/counter.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/counter.h b/include/linux/counter.h
index 32fb4d8cc3fd..9dbd5df4cd34 100644
--- a/include/linux/counter.h
+++ b/include/linux/counter.h
@@ -315,7 +315,7 @@ enum counter_signal_value {
  *			Count's functions_list array.
  * @action_get:		function to get the current action mode. Returns 0 on
  *			success and negative error code on error. The index of
- *			the respective Signal's returned action mode should be
+ *			the respective Synapse's returned action mode should be
  *			passed back via the action parameter.
  * @action_set:		function to set the action mode. action is the index of
  *			the requested action mode from the respective Synapse's
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
