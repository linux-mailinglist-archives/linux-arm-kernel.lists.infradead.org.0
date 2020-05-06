Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2433E1C6D62
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zU6tTEg8gp6oKXDtjLW4oQvU+oZDz8U6s7uhCVpHtKY=; b=E7z5eEPz2mPptDgxv8loSLwQUF
	fzKK0SVGLndagWnWPJ9h+LnxZPsnkpITGNytnpS8aAi5rC+oMISaBbUtDKzFDVKZ1ytZpUz49uaMz
	FNUOK4rRCUDP1RPQ+hT99+6bVuiHr6psyTEzKaJpFtJ7Vk+s7lxuW1PnznIzWhvBKDbkujyYpZllG
	PjrmXiL2MMy4VtaLs+uZlurc9CYkUWfQnu+S7KReF5fUpNlkBt43bPxzKuWO1p92kzdf7vXIQ1Ioq
	nlcUXGYOdJkG1A0/Uq3ihR9+PFBOzJJaF7G0aWWfiEOHkP0tRzoKs+J6xf8JP+Q7L88hhK7+f94Xr
	eb5dLX6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGZh-0005do-5T; Wed, 06 May 2020 09:42:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGYW-0004kI-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:41:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id b6so250146plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 02:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3DDovhauMkogXrTb9Ryx5FL/QviqwI6Y6CqY+5NUf+I=;
 b=Q9VGl04I1Ad+Dbvc+uiDufa8ZJ1I95O88iQvrExlbyd0dBjQfw7k1ZnpT9vokfRZoq
 3TyWH/918m4KX8t1xCfXFKZhmfyNjsvWrm4hN1PS957h64Fo803NipqyraoLiJPzOLsT
 fGZjISK1IEzk3gZ334PXrMiZaXvyvE9iIOjdlLa3Dc7thCpguXyF4xhp84OqPDmeG+Rm
 GJZCSpBtkmmshn52PgWyycZVyDwA7XGVv46WjoL2Hig6fWalWB23JkGiuIFST0LdR19S
 XCHEDIUW4ls5t3mV3MGvsvLym0ewqzWZxx+SOI2V5DCLETyfTm2TAUMHR68aVe3Ofkm4
 Ncfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3DDovhauMkogXrTb9Ryx5FL/QviqwI6Y6CqY+5NUf+I=;
 b=N9hLqdct/qf/2t982uQRlr0xvfgfyaAQTo9w7aHA0uaAC9xMLtjohuKfv9DjXxgT9x
 OQwpXCJqps+yLY+UKxNSuF0BnvcIeYjD79KxiBKu0GbDea8rOaWZcYQlHNletD8nqN0n
 t70NV3d2MAyo87uvWXnkkKuJ2L7PbJi50bhlKb8Ic6ToJKqC38ko96dWiQtjuJE5xGOw
 NWst6k4W25PlCv6NqxE87ScAU56h5yFGZwrCNlHOsHksFVsOOPl0qJE3tUpp20o+iUVd
 GTul2D+YHI7CKuAvP1mjC1PPMd/46S8r/n1un/4+LiJ07sh0izKZVJo4EuZey6ic0zXU
 RPZQ==
X-Gm-Message-State: AGi0PuYR/rvSBBQTtQmUjQjRYA1AYPsVbo6THJH+82CznE2mo4Tb6yL2
 vWllj1oTs7o7GlmlJy1VoPjWIA==
X-Google-Smtp-Source: APiQypJep+vzKwYkiq8tNVcoRKBQqvygmDMiU3wmwYTRCujJ4dpxH504cMcQBD+J7HVm3fH3jpT+vw==
X-Received: by 2002:a17:902:b187:: with SMTP id s7mr7558369plr.0.1588758090965; 
 Wed, 06 May 2020 02:41:30 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.141])
 by smtp.gmail.com with ESMTPSA id a2sm1337360pfg.106.2020.05.06.02.41.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 02:41:30 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jarkko.sakkinen@linux.intel.com, zohar@linux.ibm.com, jejb@linux.ibm.com
Subject: [PATCH v4 4/4] MAINTAINERS: Add entry for TEE based Trusted Keys
Date: Wed,  6 May 2020 15:10:17 +0530
Message-Id: <1588758017-30426-5-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_024132_188999_3688743D 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, op-tee@lists.trustedfirmware.org,
 corbet@lwn.net, janne.karhunen@gmail.com, linux-doc@vger.kernel.org,
 jmorris@namei.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for TEE based Trusted Keys framework.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b816a45..fc8bf16 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9403,6 +9403,14 @@ F:	include/keys/trusted-type.h
 F:	include/keys/trusted_tpm.h
 F:	security/keys/trusted-keys/
 
+KEYS-TRUSTED-TEE
+M:	Sumit Garg <sumit.garg@linaro.org>
+L:	linux-integrity@vger.kernel.org
+L:	keyrings@vger.kernel.org
+S:	Supported
+F:	include/keys/trusted_tee.h
+F:	security/keys/trusted-keys/trusted_tee.c
+
 KEYS/KEYRINGS
 M:	David Howells <dhowells@redhat.com>
 M:	Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
