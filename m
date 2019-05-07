Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E685816DBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 01:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OimJDXUdYQCzuTgrXOQc0OSsEEvayTbHFs88InZaGjA=; b=heE
	3OcQfTfMez37cz4Y7LZr4XJrgkMfdPdyjgR9cRjbQ7Mc1HXmea+Sm8jO4o8uyHmV6IEFtdPw51tPN
	b+bnqTvD4y1E0U+ieQb9kMiOLK5bUl6X8cZsgFHlh5rdu+Kuxoz6xy7t0WsnWxNjKqLBtjEZ/nUpV
	PvlzyQP5wz9FnlNNiw4pgpfl8/xvpaeBWiQNePuAXmCl2aC+Fbl5wcfh1oiAzpsZ58rJTVuNAYljY
	UxuCTh4e3OF2RDHGE3TBbaLLE+v0fU7yE88xxuAjhSGNCnirB4Bh2yXG72FqTSdiQSbJJhXDECLu4
	tDbt1QnCv0efzULw7eQgJ0eiI+wdykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9E7-0006mq-Dn; Tue, 07 May 2019 23:10:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9Dy-0006i9-9v
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 23:10:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi2so8898296plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 16:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PP6+fndUIG4IIkxYrEQFsbVdqZqEU6ScA9UQeyIypuQ=;
 b=Kpgce/hwwS3m0yYRu4AlEIBbliaNKE7pCuG22IqFi2+0C/o1qPz3yPhkswJLNnR4dL
 EZNN9imgzu6r7+650jRs/Aa9mhk+wRmMPbxaHmoLuBmz2s7F2BgoOrpbmK1YfZOPIsXq
 +NOcryVJ4zdm3pxAaCe1NgXfCy0wRvmb2D8bMw6OgwsHnnD6NBCKt1MJWLIv+eYN9VSc
 SYjtUvJ2nzbHfmklqK6TppCggVKzIhE+5TrBAQg4YGp2LNddiQjH8sJVw/OQiC5Nykn4
 gygKINbDiCpkvAFBltAOQDGC+NowC/gys4+axE/y9H0BeiF8Dod6/VluFGsW7/SBoRJk
 YFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PP6+fndUIG4IIkxYrEQFsbVdqZqEU6ScA9UQeyIypuQ=;
 b=o6ZwK++GuWOikmAaEPV0nuZBzIu5/q5zsatNlj3LbG8k54KZxF4Se9+4nxOt37zltz
 UY1WIwmpf4KnUVfCTuxJCqnqVlLCLu4bpJBvRrWmR+xW94ZWutIp10N3xzydVvm7GyFV
 aVTyZmygvsSInyJD4AaK44EUL8A/481oYF+ev02vyNmslQzN8BK68YUxLeRV88/1c/0k
 OlMFtyi0elR1eMu9jInwkU4v13SHAwpDLftRM0CrtMKRI98kZ91m+Hl0lEZXhjeF58D8
 kjgdKBC4YRMgw5ykpEOOjA5aH83fo1vKHoxu2aZ2UlAafcK2RsjumS5bSkqR1nP/Ywsr
 zy4w==
X-Gm-Message-State: APjAAAVYp7U4SXb8TKCL9dzLOYqsUd1lpTCRHWRb6e6dr8YD0wrOPqCO
 YZSN2CemtEms2tx2Em1stjI=
X-Google-Smtp-Source: APXvYqyhousJMqD5DgnvXJFbKsTA00ZmyGSAFJJ6eypXpI5duu/6vzyNKl7HSIuPW2rqnyhPuGsdDg==
X-Received: by 2002:a17:902:5acb:: with SMTP id
 g11mr7135217plm.198.1557270613082; 
 Tue, 07 May 2019 16:10:13 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id w12sm7154742pfj.41.2019.05.07.16.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 16:10:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Tue,  7 May 2019 16:09:15 -0700
Message-Id: <20190507230917.21659-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_161014_342027_154E6524 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Guenter Roeck <linux@roeck-us.net>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep, Guenter,

This patch series adds support for scaling SCMI sensor values read from
firmware. Sudeep, let me know if you think we should be treating scale
== 0 as a special value to preserve some firmware compatibility (not
that this would be desired).

Changes in v3:

- add a local __pow10 function to scmi-hwmon.c while a plan to provide
  a generic function is figured out.
- add check on power > 18 which would overflow a 64-bit unsigned integer
- use div64_u64() to properly divide a 64-bit quantity with an unsigned
  64-bit quantity

Changes in v2:

- added a helper function in kernel.h: __pow10()
- made the scale in scmi_sensor_info an s8 type, added defines for
  checking the sign bit and sign extending with a mask
- simplify computations in hwmon driver


Florian Fainelli (2):
  firmware: arm_scmi: Fetch and store sensor scale
  hwmon: scmi: Scale values to target desired HWMON units

 drivers/firmware/arm_scmi/sensors.c |  6 ++++
 drivers/hwmon/scmi-hwmon.c          | 43 ++++++++++++++++++++++++++++-
 include/linux/scmi_protocol.h       |  1 +
 3 files changed, 49 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
