Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B18F7B38A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 21:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUWWQe9O/7VBIQrkrUW5J56iqIc54pT8tS59cVfc9rw=; b=JYw81uOCyjRKUK
	8sWkMZVxWbuBV8pyFdpMMUOIuexoZ/qU+5H+df5UvQJrN3QTiL0a+NzpmiHi+fAlVdNThzs/fCb0V
	qU/LZMLvKNx7nQe1+3hGeDG3rmSq4L74GtRB5sWiWKLP8qlTTOrxHhvbIqS4Rewnx9ehLHHNlpUvV
	r8dN07FRoG0/zjB90eSeRgbuqEb7yvSW3NADKtARnsGg7GVEVw+ziuP9HAYU9cVr1wMM0POIQLCjC
	j/HgjnsTH7DeTN191jT952ahU5NXRKCzxdMObpb9R7U3k/br8fQs3ZRYvPVti860KCl10rft3e0lI
	1jqdHdpD4gKVSzCs0zdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYBU-0004DU-RC; Tue, 30 Jul 2019 19:53:20 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYBB-00044d-3m; Tue, 30 Jul 2019 19:53:04 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M2ep5-1hwguM3SiF-004Dqv; Tue, 30 Jul 2019 21:52:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alexander Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH v5 12/29] compat_ioctl: move drivers to compat_ptr_ioctl
Date: Tue, 30 Jul 2019 21:50:28 +0200
Message-Id: <20190730195227.742215-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190730192552.4014288-1-arnd@arndb.de>
References: <20190730192552.4014288-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:f4kyacZkBh7d2L8DvfG/VWglDWmV1r6PyMvHlDfoj4C7ggclB67
 iYy8MoHZ4ZjuI6LNLyJEN3yiNqmQw5XpLccLKCY831oDCsExHVnyRsQw8RhuXBWAupdrWGU
 2uujPAjsUE4qQ22u48yyaIJueGs1R4h2CIxPvTzi5pGqdRk3Jl1MaQfXUJiC/aGxUwrOT6G
 Ape/7iXHD3yCgh14Z37RA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O3QlaSg0p94=:2DC89ChFTfzqSY3IIwQ7UN
 xd3l5T4yi05idZGMcAom12BDjEwRndOWlluV3dv9kwnrIlv6FXxgCAuZpK+r6w6IQ8DJ+hd/w
 eNe2JmIEZ0O947bREIbVnghXzoDsNhb/k4GhdagSKBJMuiKSx6FvgiCloXsk+MwE9wIF8Mi8t
 OaiDAO5is7ZrdpajoFOJwfkd/HGzdP/XXH0zGWsGIpATl1gEHU2U0R8/o5JwK/BiMH4N/hpi9
 6Pj6G5XUeVMuuAVNYoIMUwa4DTtFhMb0zdxPoAqLkvrC0cOcVK5kDtyzLkXHb19krCEnxSvH9
 xSAisf/onUmQT/aR/R2k7HCF5D8v8yqpvJgY8KCvRKjjNdq/Kehh1Ev6C68pyOXzG96g7wos6
 m8eLeJowf0dLdiTflRagoHdVMRg/jBLl0ARN0j0/nXPtR+IjdkjADW7zvFhLYkXqZkbL5DGhY
 tH7TvoRuR3rY4Q072FzD+A+IfBe+cg9OzyaQLv7A47rkwZZlyIXqh5fQBWBCOINljdNv17lpE
 Osp7k4bcfZGhUKqYJjtxf9uvbBwIv1Yi7fZP4oPbCp6V98KGd8KP6Pg34UbofokiwizyBakGd
 F9QmeKEOX806mM2gvmP5CExg1+AicT9AOnlvsd+AmokRI3klpronJMiCiYfxMqcru9NgTaX5q
 ZAj1xkW+A+XM9qrwKrEzGxwWmAk9LM/hcMi2xrgFVqwXsrbQdASKOLuLxgrfEYaJwdL3zbVNf
 V8Futwfot9Yamgna+5pt17t5UNBev1eV66UBeg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_125301_607233_84A74B23 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-input@vger.kernel.org,
 kvm@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 "Michael S . Tsirkin" <mst@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 virtualization@lists.linux-foundation.org, Jason Gunthorpe <jgg@mellanox.com>,
 linux-mtd@lists.infradead.org, Stefan Hajnoczi <stefanha@redhat.com>,
 Jiri Kosina <jkosina@suse.cz>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each of these drivers has a copy of the same trivial helper function to
convert the pointer argument and then call the native ioctl handler.

We now have a generic implementation of that, so use it.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Michael S. Tsirkin <mst@redhat.com>
Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>
Reviewed-by: Jiri Kosina <jkosina@suse.cz>
Reviewed-by: Stefan Hajnoczi <stefanha@redhat.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/char/ppdev.c              | 12 +---------
 drivers/char/tpm/tpm_vtpm_proxy.c | 12 +---------
 drivers/firewire/core-cdev.c      | 12 +---------
 drivers/hid/usbhid/hiddev.c       | 11 +--------
 drivers/hwtracing/stm/core.c      | 12 +---------
 drivers/misc/mei/main.c           | 22 +----------------
 drivers/mtd/ubi/cdev.c            | 36 +++-------------------------
 drivers/net/tap.c                 | 12 +---------
 drivers/staging/pi433/pi433_if.c  | 12 +---------
 drivers/usb/core/devio.c          | 16 +------------
 drivers/vfio/vfio.c               | 39 +++----------------------------
 drivers/vhost/net.c               | 12 +---------
 drivers/vhost/scsi.c              | 12 +---------
 drivers/vhost/test.c              | 12 +---------
 drivers/vhost/vsock.c             | 12 +---------
 fs/ceph/dir.c                     |  2 +-
 fs/ceph/file.c                    |  2 +-
 fs/ceph/super.h                   |  9 -------
 fs/fat/file.c                     | 13 +----------
 19 files changed, 22 insertions(+), 248 deletions(-)

diff --git a/drivers/char/ppdev.c b/drivers/char/ppdev.c
index f0a8adca1eee..c4d5cc4a1d3e 100644
--- a/drivers/char/ppdev.c
+++ b/drivers/char/ppdev.c
@@ -670,14 +670,6 @@ static long pp_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	return ret;
 }
 
-#ifdef CONFIG_COMPAT
-static long pp_compat_ioctl(struct file *file, unsigned int cmd,
-			    unsigned long arg)
-{
-	return pp_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static int pp_open(struct inode *inode, struct file *file)
 {
 	unsigned int minor = iminor(inode);
@@ -786,9 +778,7 @@ static const struct file_operations pp_fops = {
 	.write		= pp_write,
 	.poll		= pp_poll,
 	.unlocked_ioctl	= pp_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl   = pp_compat_ioctl,
-#endif
+	.compat_ioctl   = compat_ptr_ioctl,
 	.open		= pp_open,
 	.release	= pp_release,
 };
diff --git a/drivers/char/tpm/tpm_vtpm_proxy.c b/drivers/char/tpm/tpm_vtpm_proxy.c
index 2f6e087ec496..91c772e38bb5 100644
--- a/drivers/char/tpm/tpm_vtpm_proxy.c
+++ b/drivers/char/tpm/tpm_vtpm_proxy.c
@@ -670,20 +670,10 @@ static long vtpmx_fops_ioctl(struct file *f, unsigned int ioctl,
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long vtpmx_fops_compat_ioctl(struct file *f, unsigned int ioctl,
-					  unsigned long arg)
-{
-	return vtpmx_fops_ioctl(f, ioctl, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static const struct file_operations vtpmx_fops = {
 	.owner = THIS_MODULE,
 	.unlocked_ioctl = vtpmx_fops_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl = vtpmx_fops_compat_ioctl,
-#endif
+	.compat_ioctl = compat_ptr_ioctl,
 	.llseek = noop_llseek,
 };
 
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 1da7ba18d399..c777088f5828 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1646,14 +1646,6 @@ static long fw_device_op_ioctl(struct file *file,
 	return dispatch_ioctl(file->private_data, cmd, (void __user *)arg);
 }
 
-#ifdef CONFIG_COMPAT
-static long fw_device_op_compat_ioctl(struct file *file,
-				      unsigned int cmd, unsigned long arg)
-{
-	return dispatch_ioctl(file->private_data, cmd, compat_ptr(arg));
-}
-#endif
-
 static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 {
 	struct client *client = file->private_data;
@@ -1795,7 +1787,5 @@ const struct file_operations fw_device_ops = {
 	.mmap		= fw_device_op_mmap,
 	.release	= fw_device_op_release,
 	.poll		= fw_device_op_poll,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= fw_device_op_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 };
diff --git a/drivers/hid/usbhid/hiddev.c b/drivers/hid/usbhid/hiddev.c
index 55b72573066b..70009bd76ac1 100644
--- a/drivers/hid/usbhid/hiddev.c
+++ b/drivers/hid/usbhid/hiddev.c
@@ -842,13 +842,6 @@ static long hiddev_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	return r;
 }
 
-#ifdef CONFIG_COMPAT
-static long hiddev_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
-{
-	return hiddev_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static const struct file_operations hiddev_fops = {
 	.owner =	THIS_MODULE,
 	.read =		hiddev_read,
@@ -858,9 +851,7 @@ static const struct file_operations hiddev_fops = {
 	.release =	hiddev_release,
 	.unlocked_ioctl =	hiddev_ioctl,
 	.fasync =	hiddev_fasync,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= hiddev_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 	.llseek		= noop_llseek,
 };
 
diff --git a/drivers/hwtracing/stm/core.c b/drivers/hwtracing/stm/core.c
index e55b902560de..0fbc994900fd 100644
--- a/drivers/hwtracing/stm/core.c
+++ b/drivers/hwtracing/stm/core.c
@@ -839,23 +839,13 @@ stm_char_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	return err;
 }
 
-#ifdef CONFIG_COMPAT
-static long
-stm_char_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
-{
-	return stm_char_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
-}
-#else
-#define stm_char_compat_ioctl	NULL
-#endif
-
 static const struct file_operations stm_fops = {
 	.open		= stm_char_open,
 	.release	= stm_char_release,
 	.write		= stm_char_write,
 	.mmap		= stm_char_mmap,
 	.unlocked_ioctl	= stm_char_ioctl,
-	.compat_ioctl	= stm_char_compat_ioctl,
+	.compat_ioctl	= compat_ptr_ioctl,
 	.llseek		= no_llseek,
 };
 
diff --git a/drivers/misc/mei/main.c b/drivers/misc/mei/main.c
index f894d1f8a53e..4ea7feb4ec2d 100644
--- a/drivers/misc/mei/main.c
+++ b/drivers/misc/mei/main.c
@@ -532,24 +532,6 @@ static long mei_ioctl(struct file *file, unsigned int cmd, unsigned long data)
 	return rets;
 }
 
-/**
- * mei_compat_ioctl - the compat IOCTL function
- *
- * @file: pointer to file structure
- * @cmd: ioctl command
- * @data: pointer to mei message structure
- *
- * Return: 0 on success , <0 on error
- */
-#ifdef CONFIG_COMPAT
-static long mei_compat_ioctl(struct file *file,
-			unsigned int cmd, unsigned long data)
-{
-	return mei_ioctl(file, cmd, (unsigned long)compat_ptr(data));
-}
-#endif
-
-
 /**
  * mei_poll - the poll function
  *
@@ -905,9 +887,7 @@ static const struct file_operations mei_fops = {
 	.owner = THIS_MODULE,
 	.read = mei_read,
 	.unlocked_ioctl = mei_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl = mei_compat_ioctl,
-#endif
+	.compat_ioctl = compat_ptr_ioctl,
 	.open = mei_open,
 	.release = mei_release,
 	.write = mei_write,
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 1b77fff9f892..cc9a28cf9d82 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -1078,36 +1078,6 @@ static long ctrl_cdev_ioctl(struct file *file, unsigned int cmd,
 	return err;
 }
 
-#ifdef CONFIG_COMPAT
-static long vol_cdev_compat_ioctl(struct file *file, unsigned int cmd,
-				  unsigned long arg)
-{
-	unsigned long translated_arg = (unsigned long)compat_ptr(arg);
-
-	return vol_cdev_ioctl(file, cmd, translated_arg);
-}
-
-static long ubi_cdev_compat_ioctl(struct file *file, unsigned int cmd,
-				  unsigned long arg)
-{
-	unsigned long translated_arg = (unsigned long)compat_ptr(arg);
-
-	return ubi_cdev_ioctl(file, cmd, translated_arg);
-}
-
-static long ctrl_cdev_compat_ioctl(struct file *file, unsigned int cmd,
-				   unsigned long arg)
-{
-	unsigned long translated_arg = (unsigned long)compat_ptr(arg);
-
-	return ctrl_cdev_ioctl(file, cmd, translated_arg);
-}
-#else
-#define vol_cdev_compat_ioctl  NULL
-#define ubi_cdev_compat_ioctl  NULL
-#define ctrl_cdev_compat_ioctl NULL
-#endif
-
 /* UBI volume character device operations */
 const struct file_operations ubi_vol_cdev_operations = {
 	.owner          = THIS_MODULE,
@@ -1118,7 +1088,7 @@ const struct file_operations ubi_vol_cdev_operations = {
 	.write          = vol_cdev_write,
 	.fsync		= vol_cdev_fsync,
 	.unlocked_ioctl = vol_cdev_ioctl,
-	.compat_ioctl   = vol_cdev_compat_ioctl,
+	.compat_ioctl   = compat_ptr_ioctl,
 };
 
 /* UBI character device operations */
@@ -1126,13 +1096,13 @@ const struct file_operations ubi_cdev_operations = {
 	.owner          = THIS_MODULE,
 	.llseek         = no_llseek,
 	.unlocked_ioctl = ubi_cdev_ioctl,
-	.compat_ioctl   = ubi_cdev_compat_ioctl,
+	.compat_ioctl   = compat_ptr_ioctl,
 };
 
 /* UBI control character device operations */
 const struct file_operations ubi_ctrl_cdev_operations = {
 	.owner          = THIS_MODULE,
 	.unlocked_ioctl = ctrl_cdev_ioctl,
-	.compat_ioctl   = ctrl_cdev_compat_ioctl,
+	.compat_ioctl   = compat_ptr_ioctl,
 	.llseek		= no_llseek,
 };
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index dd614c2cd994..bcdfb0d88753 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -1123,14 +1123,6 @@ static long tap_ioctl(struct file *file, unsigned int cmd,
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long tap_compat_ioctl(struct file *file, unsigned int cmd,
-			     unsigned long arg)
-{
-	return tap_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static const struct file_operations tap_fops = {
 	.owner		= THIS_MODULE,
 	.open		= tap_open,
@@ -1140,9 +1132,7 @@ static const struct file_operations tap_fops = {
 	.poll		= tap_poll,
 	.llseek		= no_llseek,
 	.unlocked_ioctl	= tap_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= tap_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 };
 
 static int tap_get_user_xdp(struct tap_queue *q, struct xdp_buff *xdp)
diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 40c6f4e7632f..313d22f6210f 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -928,16 +928,6 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	return 0;
 }
 
-#ifdef CONFIG_COMPAT
-static long
-pi433_compat_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
-{
-	return pi433_ioctl(filp, cmd, (unsigned long)compat_ptr(arg));
-}
-#else
-#define pi433_compat_ioctl NULL
-#endif /* CONFIG_COMPAT */
-
 /*-------------------------------------------------------------------------*/
 
 static int pi433_open(struct inode *inode, struct file *filp)
@@ -1094,7 +1084,7 @@ static const struct file_operations pi433_fops = {
 	.write =	pi433_write,
 	.read =		pi433_read,
 	.unlocked_ioctl = pi433_ioctl,
-	.compat_ioctl = pi433_compat_ioctl,
+	.compat_ioctl = compat_ptr_ioctl,
 	.open =		pi433_open,
 	.release =	pi433_release,
 	.llseek =	no_llseek,
diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index b265ab5405f9..efea6cff66d4 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -2604,18 +2604,6 @@ static long usbdev_ioctl(struct file *file, unsigned int cmd,
 	return ret;
 }
 
-#ifdef CONFIG_COMPAT
-static long usbdev_compat_ioctl(struct file *file, unsigned int cmd,
-			unsigned long arg)
-{
-	int ret;
-
-	ret = usbdev_do_ioctl(file, cmd, compat_ptr(arg));
-
-	return ret;
-}
-#endif
-
 /* No kernel lock - fine */
 static __poll_t usbdev_poll(struct file *file,
 				struct poll_table_struct *wait)
@@ -2639,9 +2627,7 @@ const struct file_operations usbdev_file_operations = {
 	.read =		  usbdev_read,
 	.poll =		  usbdev_poll,
 	.unlocked_ioctl = usbdev_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl =   usbdev_compat_ioctl,
-#endif
+	.compat_ioctl =   compat_ptr_ioctl,
 	.mmap =           usbdev_mmap,
 	.open =		  usbdev_open,
 	.release =	  usbdev_release,
diff --git a/drivers/vfio/vfio.c b/drivers/vfio/vfio.c
index 388597930b64..c8482624ca34 100644
--- a/drivers/vfio/vfio.c
+++ b/drivers/vfio/vfio.c
@@ -1184,15 +1184,6 @@ static long vfio_fops_unl_ioctl(struct file *filep,
 	return ret;
 }
 
-#ifdef CONFIG_COMPAT
-static long vfio_fops_compat_ioctl(struct file *filep,
-				   unsigned int cmd, unsigned long arg)
-{
-	arg = (unsigned long)compat_ptr(arg);
-	return vfio_fops_unl_ioctl(filep, cmd, arg);
-}
-#endif	/* CONFIG_COMPAT */
-
 static int vfio_fops_open(struct inode *inode, struct file *filep)
 {
 	struct vfio_container *container;
@@ -1275,9 +1266,7 @@ static const struct file_operations vfio_fops = {
 	.read		= vfio_fops_read,
 	.write		= vfio_fops_write,
 	.unlocked_ioctl	= vfio_fops_unl_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= vfio_fops_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 	.mmap		= vfio_fops_mmap,
 };
 
@@ -1556,15 +1545,6 @@ static long vfio_group_fops_unl_ioctl(struct file *filep,
 	return ret;
 }
 
-#ifdef CONFIG_COMPAT
-static long vfio_group_fops_compat_ioctl(struct file *filep,
-					 unsigned int cmd, unsigned long arg)
-{
-	arg = (unsigned long)compat_ptr(arg);
-	return vfio_group_fops_unl_ioctl(filep, cmd, arg);
-}
-#endif	/* CONFIG_COMPAT */
-
 static int vfio_group_fops_open(struct inode *inode, struct file *filep)
 {
 	struct vfio_group *group;
@@ -1620,9 +1600,7 @@ static int vfio_group_fops_release(struct inode *inode, struct file *filep)
 static const struct file_operations vfio_group_fops = {
 	.owner		= THIS_MODULE,
 	.unlocked_ioctl	= vfio_group_fops_unl_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= vfio_group_fops_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 	.open		= vfio_group_fops_open,
 	.release	= vfio_group_fops_release,
 };
@@ -1687,24 +1665,13 @@ static int vfio_device_fops_mmap(struct file *filep, struct vm_area_struct *vma)
 	return device->ops->mmap(device->device_data, vma);
 }
 
-#ifdef CONFIG_COMPAT
-static long vfio_device_fops_compat_ioctl(struct file *filep,
-					  unsigned int cmd, unsigned long arg)
-{
-	arg = (unsigned long)compat_ptr(arg);
-	return vfio_device_fops_unl_ioctl(filep, cmd, arg);
-}
-#endif	/* CONFIG_COMPAT */
-
 static const struct file_operations vfio_device_fops = {
 	.owner		= THIS_MODULE,
 	.release	= vfio_device_fops_release,
 	.read		= vfio_device_fops_read,
 	.write		= vfio_device_fops_write,
 	.unlocked_ioctl	= vfio_device_fops_unl_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= vfio_device_fops_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 	.mmap		= vfio_device_fops_mmap,
 };
 
diff --git a/drivers/vhost/net.c b/drivers/vhost/net.c
index 1a2dd53caade..e158159671fa 100644
--- a/drivers/vhost/net.c
+++ b/drivers/vhost/net.c
@@ -1751,14 +1751,6 @@ static long vhost_net_ioctl(struct file *f, unsigned int ioctl,
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long vhost_net_compat_ioctl(struct file *f, unsigned int ioctl,
-				   unsigned long arg)
-{
-	return vhost_net_ioctl(f, ioctl, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static ssize_t vhost_net_chr_read_iter(struct kiocb *iocb, struct iov_iter *to)
 {
 	struct file *file = iocb->ki_filp;
@@ -1794,9 +1786,7 @@ static const struct file_operations vhost_net_fops = {
 	.write_iter     = vhost_net_chr_write_iter,
 	.poll           = vhost_net_chr_poll,
 	.unlocked_ioctl = vhost_net_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl   = vhost_net_compat_ioctl,
-#endif
+	.compat_ioctl   = compat_ptr_ioctl,
 	.open           = vhost_net_open,
 	.llseek		= noop_llseek,
 };
diff --git a/drivers/vhost/scsi.c b/drivers/vhost/scsi.c
index a9caf1bc3c3e..0b949a14bce3 100644
--- a/drivers/vhost/scsi.c
+++ b/drivers/vhost/scsi.c
@@ -1727,21 +1727,11 @@ vhost_scsi_ioctl(struct file *f,
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long vhost_scsi_compat_ioctl(struct file *f, unsigned int ioctl,
-				unsigned long arg)
-{
-	return vhost_scsi_ioctl(f, ioctl, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static const struct file_operations vhost_scsi_fops = {
 	.owner          = THIS_MODULE,
 	.release        = vhost_scsi_release,
 	.unlocked_ioctl = vhost_scsi_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= vhost_scsi_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 	.open           = vhost_scsi_open,
 	.llseek		= noop_llseek,
 };
diff --git a/drivers/vhost/test.c b/drivers/vhost/test.c
index 9e90e969af55..71954077df69 100644
--- a/drivers/vhost/test.c
+++ b/drivers/vhost/test.c
@@ -297,21 +297,11 @@ static long vhost_test_ioctl(struct file *f, unsigned int ioctl,
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long vhost_test_compat_ioctl(struct file *f, unsigned int ioctl,
-				   unsigned long arg)
-{
-	return vhost_test_ioctl(f, ioctl, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static const struct file_operations vhost_test_fops = {
 	.owner          = THIS_MODULE,
 	.release        = vhost_test_release,
 	.unlocked_ioctl = vhost_test_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl   = vhost_test_compat_ioctl,
-#endif
+	.compat_ioctl   = compat_ptr_ioctl,
 	.open           = vhost_test_open,
 	.llseek		= noop_llseek,
 };
diff --git a/drivers/vhost/vsock.c b/drivers/vhost/vsock.c
index 6a50e1d0529c..69c0350f622e 100644
--- a/drivers/vhost/vsock.c
+++ b/drivers/vhost/vsock.c
@@ -729,23 +729,13 @@ static long vhost_vsock_dev_ioctl(struct file *f, unsigned int ioctl,
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long vhost_vsock_dev_compat_ioctl(struct file *f, unsigned int ioctl,
-					 unsigned long arg)
-{
-	return vhost_vsock_dev_ioctl(f, ioctl, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static const struct file_operations vhost_vsock_fops = {
 	.owner          = THIS_MODULE,
 	.open           = vhost_vsock_dev_open,
 	.release        = vhost_vsock_dev_release,
 	.llseek		= noop_llseek,
 	.unlocked_ioctl = vhost_vsock_dev_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl   = vhost_vsock_dev_compat_ioctl,
-#endif
+	.compat_ioctl   = compat_ptr_ioctl,
 };
 
 static struct miscdevice vhost_vsock_misc = {
diff --git a/fs/ceph/dir.c b/fs/ceph/dir.c
index 401c17d36b71..811f45badc10 100644
--- a/fs/ceph/dir.c
+++ b/fs/ceph/dir.c
@@ -1808,7 +1808,7 @@ const struct file_operations ceph_dir_fops = {
 	.open = ceph_open,
 	.release = ceph_release,
 	.unlocked_ioctl = ceph_ioctl,
-	.compat_ioctl = ceph_compat_ioctl,
+	.compat_ioctl = compat_ptr_ioctl,
 	.fsync = ceph_fsync,
 	.lock = ceph_lock,
 	.flock = ceph_flock,
diff --git a/fs/ceph/file.c b/fs/ceph/file.c
index 99712b6b1ad5..676e5aed7a58 100644
--- a/fs/ceph/file.c
+++ b/fs/ceph/file.c
@@ -2138,7 +2138,7 @@ const struct file_operations ceph_file_fops = {
 	.splice_read = generic_file_splice_read,
 	.splice_write = iter_file_splice_write,
 	.unlocked_ioctl = ceph_ioctl,
-	.compat_ioctl = ceph_compat_ioctl,
+	.compat_ioctl = compat_ptr_ioctl,
 	.fallocate	= ceph_fallocate,
 	.copy_file_range = ceph_copy_file_range,
 };
diff --git a/fs/ceph/super.h b/fs/ceph/super.h
index 0aebccd48fa0..f7945e16ee09 100644
--- a/fs/ceph/super.h
+++ b/fs/ceph/super.h
@@ -1109,15 +1109,6 @@ extern void ceph_readdir_cache_release(struct ceph_readdir_cache_control *ctl);
 
 /* ioctl.c */
 extern long ceph_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
-static inline long
-ceph_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
-{
-#ifdef CONFIG_COMPAT
-	return ceph_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
-#else
-	return -ENOTTY;
-#endif
-}
 
 /* export.c */
 extern const struct export_operations ceph_export_ops;
diff --git a/fs/fat/file.c b/fs/fat/file.c
index 4614c0ba5f1c..bdc4503c00a3 100644
--- a/fs/fat/file.c
+++ b/fs/fat/file.c
@@ -172,15 +172,6 @@ long fat_generic_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	}
 }
 
-#ifdef CONFIG_COMPAT
-static long fat_generic_compat_ioctl(struct file *filp, unsigned int cmd,
-				      unsigned long arg)
-
-{
-	return fat_generic_ioctl(filp, cmd, (unsigned long)compat_ptr(arg));
-}
-#endif
-
 static int fat_file_release(struct inode *inode, struct file *filp)
 {
 	if ((filp->f_mode & FMODE_WRITE) &&
@@ -215,9 +206,7 @@ const struct file_operations fat_file_operations = {
 	.mmap		= generic_file_mmap,
 	.release	= fat_file_release,
 	.unlocked_ioctl	= fat_generic_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= fat_generic_compat_ioctl,
-#endif
+	.compat_ioctl	= compat_ptr_ioctl,
 	.fsync		= fat_file_fsync,
 	.splice_read	= generic_file_splice_read,
 	.splice_write	= iter_file_splice_write,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
